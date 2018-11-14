#include <iostream>
#include <bitset>
#include <c++/4.8.3/vector>
#include <c++/4.8.3/cmath>
#include <c++/4.8.3/algorithm>

std::string toAscii85(std::string inputString)
{
    std::vector<long> fourLetters;

    std::string resultString;

    int addBytes = 4 - inputString.length() % 4;
    if (addBytes != 4)                                                  // добавление байтов до размера кратного 4
        for (int i {0}; i < addBytes; i++, inputString += '\0');

    auto ptr = inputString.begin();
    while (ptr != inputString.end())
    {
        std::string substring = inputString.substr(static_cast<unsigned int>(ptr - inputString.begin()), 4);     // выделяем по четыре символа и переводим в битсет
        std::string bufString;
        for (auto iter : substring)
        {
            std::bitset<8> bufBitSet(static_cast<unsigned int>((iter)));
            bufString += bufBitSet.to_string();
        }
        std::bitset<32> bitsSubString (bufString);
        fourLetters.emplace_back(bitsSubString.to_ulong());
        ptr += 4;
    }
    for (auto num : fourLetters)
    {
        int power = 4;
        while (power >= 0)
        {
            int charNum85 = static_cast<int>(floor(num / pow(85, power)));
            resultString += (char)(charNum85 + 33);
            num -= floor(charNum85 * pow(85, power));
            power--;
        }
    }
    if (addBytes != 4)
        resultString.erase(resultString.end() - addBytes, resultString.end());
    return resultString;
}

std::string fromAscii85(std::string inputString)
{
    std::vector<long> fiveLetters;

    std::string resultString;

    int addBytes = 5 - inputString.length() % 5;
    if (addBytes != 5)
    {
        for (int i {0}; i < addBytes; i++, inputString += 'u');
    }
    auto ptr = inputString.begin();
    while (ptr != inputString.end())
    {
        std::string subString = inputString.substr(static_cast<unsigned int>(ptr - inputString.begin()), 5);
        unsigned long bufLong = 0;
        int initPow = 4;
        for (auto iter : subString)
        {
            bufLong += ((int)(iter) - 33) * pow(85, initPow--);
        }
        ptr += 5;
        fiveLetters.emplace_back(bufLong);
    }

    for (const auto& num : fiveLetters)
    {
        std::bitset<32> currBitset (num);
        std::bitset<32> divider {"00000000000000000000000011111111"};
        int counter {0};
        std::string bufString;
        while (counter != 4)
        {
            auto letter = (currBitset & divider).to_ulong();
            currBitset = currBitset >> 8;
            bufString += static_cast<char>(letter);
            counter++;
        }
        std::reverse(bufString.begin(), bufString.end());
        resultString += bufString;
    }

    if (addBytes != 5)
        resultString.erase(resultString.end() - addBytes, resultString.end());

    return resultString;
}

int main()
{
    std::cout << fromAscii85(toAscii85("Type text here or create string."));
    return 0;
}