#include <iostream>
#include <bitset>
#include <c++/4.8.3/vector>
#include <c++/4.8.3/cmath>

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
    resultString.erase(resultString.end() - addBytes, resultString.end());
    return resultString;
}

int main()
{
    std::cout << toAscii85("Man is distinguished, not only by his reason, but by this singular passion from other animals, which is a lust of the mind, that by a perseverance of delight in the continued and indefatigable generation of knowledge, exceeds the short vehemence of any carnal pleasure.");
    return 0;
}