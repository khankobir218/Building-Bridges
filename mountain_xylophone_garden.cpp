#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

//Function to find the maximum  
//of two numbers 
int maxOfTwo(int x, int y)  
{  
    if (x > y)  
        return x;  
    else
        return y;  
}

//Function to find the maximum  
//of three numbers 
int maxOfThree(int p, int q, int r)  
{  
    return maxOfTwo(maxOfTwo(p, q), r);  
} 

//Function to find the length
//of a given string
int lengthOfString(string s)
{
    int len = 0;
    while (s[len] != '\0')
    {
        len++;
    }
    return len;
}

//Function to compare two strings
bool stringCompare(string a, string b)
{
    int n1 = lengthOfString(a);
    int n2 = lengthOfString(b);

    int res = 0;

    if (n1 == n2)
    {
        for (int i = 0; a[i] != '\0'; i++)
        {
            if (tolower(a[i]) > tolower(b[i]))
            {
                res = 1;
                break;
            }
            else if (tolower(a[i]) < tolower(b[i]))
            {
                res = -1;
                break;
            }
        }
    }
    else
    {
        res = n2 - n1;
    }

    if (res == 0)
        return true;
    else
        return false;
}

//Function to reverse a given string
string stringReverse(string s)
{
    int length = lengthOfString(s);

    string sReverse = "";

    for (int i = length - 1; i >= 0; i--)
    {
        sReverse += s[i];
    }

    return sReverse;
}

//Function to check if a given string is a palindrome
bool isPalindrome(string s)
{
    if (stringReverse(s) == s)
        return true;
    else
        return false;
}

//Function to find the maximum element 
//in an integer array
int maxElementInArray(int a[], int n)
{
    int max = a[0];

    for (int i = 1; i < n; i++)
    {
        if (a[i] > max)
            max = a[i];
    }

    return max;
}

//Function to find the position of the first
//occurrence of a given element in an array
int positionOfElementInArray(int a[], int n, int x)
{
    int index = -1;

    for (int i = 0; i < n; i++)
    {
        if (a[i] == x)
        {
            index = i;
            break;
        }
    }

    return index;
}

//Function to sort an array in ascending order
void bubbleSort(int a[], int n)
{
    for (int i = 0; i < n - 1; i++)
    {
        for (int j = 0; j < n - i - 1; j++)
        {
            if (a[j] > a[j + 1])
            {
                int temp = a[j];
                a[j] = a[j + 1];
                a[j + 1] = temp;
            }
        }
    }
}

//Function to check if two given strings are anagrams
bool isAnagram(string a, string b)
{
    if (lengthOfString(a) == lengthOfString(b))
    {
        int count[26] = { 0 };
        int i;

        for (i = 0; a[i] != '\0'; i++)
        {
            count[tolower(a[i]) - 'a']++;
        }

        for (i = 0; b[i] != '\0'; i++)
        {
            count[tolower(b[i]) - 'a']--;
        }

        for (i = 0; i < 26; i++)
        {
            if (count[i] != 0)
                return false;
        }

        return true;
    }
    else
    {
        return false;
    }
}

//Function to check if two given strings are a rotation of each other
bool isRotation(string a, string b)
{
    if (lengthOfString(a) == lengthOfString(b))
    {
        string s = b + b;
        return (s.find(a) != string::npos);
    }
    else
    {
        return false;
    }
}

//Function to convert a given string
//to its equivalent integer value
int stringToInt(string s)
{
    int num = 0;
    int len = lengthOfString(s);

    int j = 1;
    for (int i = len - 1; i >= 0; i--)
    {
        num += (s[i] - '0') * j;
        j *= 10;
    }

    return num;
}

//Function to check if a given number is prime
bool isPrime(int n)
{
    if (n <= 1)
        return false;

    if (n <= 3)
        return true;

    if (n % 2 == 0 || n % 3 == 0)
        return false;

    for (int i = 5; i * i <= n; i += 6)
    {
        if (n % i == 0 || n % (i + 2) == 0)
            return false;
    }

    return true;
}

//Function to find the GCD of two given numbers
int GCD(int a, int b)
{
    if (a == 0)
        return b;

    if (b == 0)
        return a;

    if (a == b)
        return a;

    if (a > b)
        return GCD(a - b, b);

    return GCD(a, b - a);
}

//Function to replace a given character in a string
string replaceCharInString(string s, char a, char b)
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == a)
            s[i] = b;
    }

    return s;
}

//Function to remove all the occurences of a given character
//from a given string
string removeCharFromString(string s, char a)
{
    string sNew = "";

    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] != a)
            sNew += s[i];
    }

    return sNew;
}

//Function to count the number of vowels
//in a given string
int countVowels(string s)
{
    int count = 0;

    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u' || s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U')
            count++;
    }

    return count;
}

//Function to count the number of words
//in a given string
int countWords(string s)
{
    int count = 0;
    int i = 0;
    while (true)
    {
        if (s[i] == ' ')
            count++;

        if (s[i] == '\0')
            break;

        i++;
    }

    return count + 1;
}

//Function to check if a given binary string is divisible by 5
bool isDivisbileBy5(string s)
{
    int num = stringToInt(s);

    if (num % 5 == 0)
        return true;
    else
        return false;
}

//Function to check if a given string
//follows the snake case convention
bool isSnakeCase(string s)
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == '_' && (s[i + 1] == '_' || s[i - 1] == '_'))
            return false;
    }

    return true;
}

//Function to find the frequency of a given character
//in a given string
int findFrequencyOfChar(string s, char a)
{
    int count = 0;

    for (int i = 0; s[i] != '\0'; i++)
    {
        if (s[i] == a)
            count++;
    }

    return count;
}

//Function to check if a given string
//follows the camel case convention
bool isCamelCase(string s)
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (isupper(s[i]) && i != 0)
            return true;
    }

    return false;
}

//Function to find the LCM of two given numbers
int LCM(int a, int b)
{
    return (a * b) / GCD(a, b);
}

//Function to find the frequency of a given word
//in a given string
int findFrequencyOfWord(string s, string word)
{
    int count = 0;

    int wordLength = lengthOfString(word);

    for (int i = 0; s[i] != '\0' - (wordLength - 1); i++)
    {
        if (word == s.substr(i, wordLength))
            count++;
    }

    return count;
}

//Function to check if two given strings are equal
bool isEqual(string a, string b)
{
    int n1 = lengthOfString(a);
    int n2 = lengthOfString(b);

    if (n1 != n2)
        return false;

    for (int i = 0; i < n1; i++)
    {
        if (tolower(a[i]) != tolower(b[i]))
            return false;
    }

    return true;
}

//Function to find the sum of elements in an array
int sumOfArray(int a[], int n)
{
    int sum = 0;

    for (int i = 0; i < n; i++)
    {
        sum += a[i];
    }

    return sum;
}

//Function to check if a given string is a palindrome
//after removing all punctuation marks
bool isPalindromeAfterRemovingPunctuation(string s)
{
    string sNew = removeCharFromString(s, '.');
    sNew = removeCharFromString(sNew, ',');
    sNew = removeCharFromString(sNew, '?');
    sNew = removeCharFromString(sNew, '!');

    if (isPalindrome(sNew))
        return true;
    else
        return false;
}

//Function to find the number of digits
//in a given integer value
int numberOfDigits(int n)
{
    int count = 0;
    while (n)
    {
        count++;
        n /= 10;
    }

    return count;
}

//Function to count the number of digits
//in a given string
int numberOfDigitsInString(string s)
{
    int count = 0;

    for (int i = 0; s[i] != '\0'; i++)
    {
        if (isdigit(s[i]))
            count++;
    }

    return count;
}

//Function to check if a given string is all upper case
bool isUpperCase(string s)
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (islower(s[i]))
            return false;
    }

    return true;
}

//Function to check if a given string is all lower case
bool isLowerCase(string s)
{
    for (int i = 0; s[i] != '\0'; i++)
    {
        if (isupper(s[i]))
            return false;
    }

    return true;
}

//Function to check if a given number is even
bool isEven(int n)
{
    if (n % 2 == 0)
        return true;
    else
        return false;
}

//Function to check if a given number is odd
bool isOdd(int n)
{
    if (n % 2 == 1)
        return true;
    else
        return false;
}

//Function to generate a random number
//between a given range
int randomNumber(int lower, int upper)
{
    return lower + rand() % (upper - lower + 1);
}

int main()
{
    cout << "Building bridges" << endl;
    return 0;
}