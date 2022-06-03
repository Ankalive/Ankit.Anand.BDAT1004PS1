{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "9fe6e47f",
   "metadata": {},
   "source": [
    "Question 1: What data type is each of the following (evaluate where necessary)?\n",
    "5\n",
    "5.0\n",
    "5 > 1\n",
    "'5'\n",
    "5 * 2\n",
    "'5' * 2\n",
    "'5' + '2'\n",
    "5 / 2\n",
    "5 % 2\n",
    "{5, 2, 1}\n",
    "5 == 3\n",
    "Pi (the number)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 46,
   "id": "9f131f64",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "<class 'int'>\n",
      "<class 'float'>\n",
      "<class 'bool'>\n",
      "<class 'str'>\n",
      "<class 'int'>\n",
      "10\n",
      "<class 'int'>\n",
      "10\n",
      "<class 'int'>\n",
      "7\n",
      "<class 'float'>\n",
      "2.5\n",
      "<class 'int'>\n",
      "1\n",
      "<class 'set'>\n",
      "<class 'bool'>\n",
      "<class 'float'>\n"
     ]
    }
   ],
   "source": [
    "\n",
    "print(type(5))\n",
    "print(type(5.0))\n",
    "print(type(5>1))\n",
    "print(type('5'))\n",
    "print(type(5*2)) \n",
    "print(5*2)\n",
    "print(type(int('5')*2))\n",
    "print(5*2)\n",
    "print(type(int('5')+int('2')))\n",
    "print(5+2)\n",
    "print(type(5/2))\n",
    "print(5/2)\n",
    "print(type(5%2))\n",
    "print(5%2)\n",
    "list={5,2,1}\n",
    "print(type(list))\n",
    "print(type(5 == 3))\n",
    "print(type(3.14))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6942543b",
   "metadata": {},
   "source": [
    "Question 2\n",
    "Write (and evaluate) python expressions that answer these questions:\n",
    "a. How many letters are there in 'Supercalifragilisticexpialidocious'?\n",
    "b. Does 'Supercalifragilisticexpialidocious' contain 'ice' as a substring?\n",
    "c. Which of the following words is the longest:\n",
    "Supercalifragilisticexpialidocious, Honorificabilitudinitatibus, or\n",
    "Bababadalgharaghtakamminarronnkonn?\n",
    "d. Which composer comes first in the dictionary: 'Berlioz', 'Borodin', 'Brian',\n",
    "'Bartok', 'Bellini', 'Buxtehude', 'Bernstein'. Which one comes last?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 107,
   "id": "4f19297e",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "34\n",
      "yes\n",
      "Largest string is :a\n",
      "1st word in the dictionary is :Bartok\n",
      "last word in the dictionary is :Buxtehude\n"
     ]
    }
   ],
   "source": [
    "a='Supercalifragilisticexpialidocious'\n",
    "b='ice'\n",
    "c='Honorificabilitudinitatibus'\n",
    "d='Bababadalgharaghtakamminarronnkonn'\n",
    "print(len(a))\n",
    "if b in a:\n",
    "    print('yes')\n",
    "else:\n",
    "    print('no')\n",
    "list=['a','c','d']\n",
    "x=max(list,key = len)\n",
    "print(\"Largest string is :\" +x)\n",
    "composer=list=(['Berlioz', 'Borodin', 'Brian', 'Bartok', 'Bellini', 'Buxtehude', 'Bernstein'])\n",
    "scomposer=sorted(composer)\n",
    "print(\"1st word in the dictionary is :\" +scomposer[0] )\n",
    "print(\"last word in the dictionary is :\" +scomposer[6])"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "90655b54",
   "metadata": {},
   "source": [
    "Question 3\n",
    "Implement function triangleArea(a,b,c) that takes as input the lengths of the 3\n",
    "sides of a triangle and returns the area of the triangle. By Heron's formula, the area\n",
    "of a triangle with side lengths a, b, and c is\n",
    "s(s - a)(s -b)(s -c)\n",
    ", where\n",
    "s = (a+b+c)/2.\n",
    ">>> triangleArea(2,2,2)\n",
    "1.7320508075688772"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 160,
   "id": "d6a3776c",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "first side :2\n",
      "second side :2\n",
      "third side :2\n",
      "1.7320508075688772\n"
     ]
    }
   ],
   "source": [
    "\n",
    "a=float(input(\"first side :\"))\n",
    "b=float(input(\"second side :\"))\n",
    "c=float(input(\"third side :\"))\n",
    "s=float((a+b+c)/2)\n",
    "area=float(s*(s-a)*(s-b)*(s-c))\n",
    "print(math.sqrt(area))\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cc2a7699",
   "metadata": {},
   "source": [
    "Question 4\n",
    "Write a program in python to separate odd and even integers in separate arrays. Go\n",
    "to the editor\n",
    "Test Data :\n",
    "Input the number of elements to be stored in the array :5\n",
    "Input 5 elements in the array :\n",
    "element - 0 : 25\n",
    "element - 1 : 47\n",
    "element - 2 : 42\n",
    "element - 3 : 56\n",
    "element - 4 : 32\n",
    "Expected Output:\n",
    "The Even elements are:\n",
    "42 56 32\n",
    "The Odd elements are :\n",
    "25 47"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 159,
   "id": "d77e8674",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Input total number of elements :5\n",
      "enter the element 1 :25\n",
      "enter the element 2 :47\n",
      "enter the element 3 :42\n",
      "enter the element 4 :56\n",
      "enter the element 5 :32\n",
      "Even numbers : [42, 56, 32]\n",
      "Odd numbers : [25, 47]\n"
     ]
    }
   ],
   "source": [
    "even=[]\n",
    "odd=[]\n",
    "num= []\n",
    "n=int(input(\"Input total number of elements :\" ))\n",
    "for i in range(1 , n+1):\n",
    "    value=int(input(\"enter the element %d :\" %i))\n",
    "    num.append(value)\n",
    "    \n",
    "\n",
    "for j in range(n):\n",
    "    if (num[j] % 2==0): \n",
    "         even.append(num[j])\n",
    "    else: \n",
    "         odd.append(num[j])\n",
    "            \n",
    "print(\"Even numbers :\", even)\n",
    "print(\"Odd numbers :\", odd)\n",
    "    "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e05899a",
   "metadata": {},
   "source": [
    "### Question 5\n",
    "a. Write a function inside(x,y,x1,y1,x2,y2) that returns True or False\n",
    "depending on whether the point (x,y) lies in the rectangle with lower left\n",
    "corner (x1,y1) and upper right corner (x2,y2).\n",
    ">>> inside(1,1,0,0,2,3)\n",
    "True\n",
    ">>> inside(-1,-1,0,0,2,3)\n",
    "False\n",
    "b. Use function inside() from part a. to write an expression that tests whether\n",
    "the point (1,1) lies in both of the following rectangles: one with lower left\n",
    "corner (0.3, 0.5) and upper right corner (1.1, 0.7) and the other with lower\n",
    "left corner (0.5, 0.2) and upper right corner (1.1, 2). "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 162,
   "id": "3f9bbf99",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "no\n"
     ]
    }
   ],
   "source": [
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d886a099",
   "metadata": {},
   "source": [
    "Question 6\n",
    "16. You can turn a word into pig-Latin using the following two rules (simplified):\n",
    "• If the word starts with a consonant, move that letter to the end and append\n",
    "'ay'. For example, 'happy' becomes 'appyhay' and 'pencil' becomes 'encilpay'.\n",
    "• If the word starts with a vowel, simply append 'way' to the end of the word.\n",
    "For example, 'enter' becomes 'enterway' and 'other' becomes 'otherway' . For\n",
    "our purposes, there are 5 vowels: a, e, i, o, u (so we count y as a consonant).\n",
    "Write a function pig() that takes a word (i.e., a string) as input and returns its pigLatin form. Your function should still work if the input word contains upper case\n",
    "characters. Your output should always be lower case however.\n",
    ">>> pig('happy')\n",
    "'appyhay'\n",
    ">>> pig('Enter')\n",
    "'enterway'"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "c999d032",
   "metadata": {},
   "outputs": [],
   "source": [
    "inp=input(\"Input a word :\")\n",
    "pyg=\"ay\"\n",
    "\n",
    "if len(inp)>0 and inp.isalpha():\n",
    "    \n",
    "    z=inp.lower()\n",
    "    first=inp[0]\n",
    "else:\n",
    "    print(\"empty\")\n",
    "\n",
    "out=z + first+pyg\n",
    "out=out[1:]\n",
    "print(out)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9506485e",
   "metadata": {},
   "source": [
    "Question 7\n",
    "File bloodtype1.txt records blood-types of patients (A, B, AB, O or OO) at a clinic.\n",
    "Write a function bldcount() that reads the file with name name and reports (i.e.,\n",
    "prints) how many patients there are in each bloodtype.\n",
    ">>> bldcount('bloodtype.txt')\n",
    "There are 10 patients of blood type A.\n",
    "There is one patient of blood type B.\n",
    "There are 10 patients of blood type AB.\n",
    "There are 12 patients of blood type O.\n",
    "There are no patients of blood type OO."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "c33f4c39",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "6cd04e7b",
   "metadata": {},
   "source": [
    "Question 8\n",
    "Write a function curconv() that takes as input:\n",
    "1. a currency represented using a string (e.g., 'JPY' for the Japanese Yen or\n",
    "'EUR' for the Euro)\n",
    "2. an amount\n",
    "and then converts and returns the amount in US dollars.\n",
    ">>> curconv('EUR', 100)\n",
    "122.96544\n",
    ">>> curconv('JPY', 100)\n",
    "1.241401\n",
    "The currency rates you will need are stored in file currencies.txt:\n",
    "AUD 1.0345157 Australian Dollar\n",
    "CHF 1.0237414 Swiss Franc\n",
    "CNY 0.1550176 Chinese Yuan\n",
    "DKK 0.1651442 Danish Krone\n",
    "EUR 1.2296544 Euro\n",
    "GBP 1.5550989 British Pound\n",
    "HKD 0.1270207 Hong Kong Dollar\n",
    "INR 0.0177643 Indian Rupee\n",
    "JPY 0.01241401 Japanese Yen\n",
    "MXN 0.0751848 Mexican Peso\n",
    "MYR 0.3145411 Malaysian Ringgit\n",
    "NOK 0.1677063 Norwegian Krone\n",
    "NZD 0.8003591 New Zealand Dollar\n",
    "PHP 0.0233234 Philippine Peso\n",
    "SEK 0.148269 Swedish Krona\n",
    "SGD 0.788871 Singapore Dollar\n",
    "THB 0.0313789 Thai Baht"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "b536883b",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "e2d6ae11",
   "metadata": {},
   "source": [
    "Question 9\n",
    "Each of the following will cause an exception (an error). Identify what type of\n",
    "exception each will cause.\n",
    "1.Trying to add incompatible variables, as in\n",
    "adding 6 + ‘a’\n",
    "2.Referring to the 12th item of a list that has only 10\n",
    "items\n",
    "3.Using a value that is out of range for a function’s\n",
    "input, such as calling math.sqrt(-1.0)\n",
    "4.Using an undeclared variable, such as print(x)\n",
    "when x has not been defined\n",
    "5.Trying to open a file that does not exist, such as\n",
    "mistyping the file name or looking in the wrong\n",
    "directory. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 172,
   "id": "4a958aa2",
   "metadata": {},
   "outputs": [
    {
     "ename": "TypeError",
     "evalue": "unsupported operand type(s) for +: 'int' and 'str'",
     "output_type": "error",
     "traceback": [
      "\u001b[1;31m---------------------------------------------------------------------------\u001b[0m",
      "\u001b[1;31mTypeError\u001b[0m                                 Traceback (most recent call last)",
      "Input \u001b[1;32mIn [172]\u001b[0m, in \u001b[0;36m<cell line: 1>\u001b[1;34m()\u001b[0m\n\u001b[1;32m----> 1\u001b[0m \u001b[38;5;28mprint\u001b[39m(\u001b[38;5;241;43m6\u001b[39;49m\u001b[38;5;241;43m+\u001b[39;49m\u001b[38;5;124;43m'\u001b[39;49m\u001b[38;5;124;43ma\u001b[39;49m\u001b[38;5;124;43m'\u001b[39;49m)\n",
      "\u001b[1;31mTypeError\u001b[0m: unsupported operand type(s) for +: 'int' and 'str'"
     ]
    }
   ],
   "source": [
    "1. unsupported operand type(s) for +: 'int' and 'str'\n",
    "\n",
    "2. unexpected EOF while parsing\n",
    "\n",
    "3. alueError: math domain error\n",
    "    \n",
    "4. name 'x' is not defined\n",
    "    \n",
    "5. IOError: [Errno 2] No such file or directory: 'D:\\\\temp\\\\test.txt'"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b27a72cb",
   "metadata": {},
   "source": [
    "Question 10\n",
    "Encryption is the process of hiding the meaning of a text by substituting letters in the\n",
    "message with other letters, according to some system. If the process is successful, no\n",
    "one but the intended recipient can understand the encrypted message. Cryptanalysis\n",
    "refers to attempts to undo the encryption, even if some details of the encryption are\n",
    "unknown (for example, if an encrypted message has been intercepted). The first step\n",
    "of cryptanalysis is often to build up a table of letter frequencies in the encrypted text.\n",
    "Assume that the string letters is already defined as\n",
    "'abcdefghijklmnopqrstuvwxyz'. Write a function called frequencies()\n",
    "that takes a string as its only parameter, and returns a list of integers, showing the\n",
    "number of times each character appears in the text. Your function may ignore any\n",
    "characters that are not in letters.\n",
    ">>> frequencies('The quick red fox got bored and went home.')\n",
    "[1, 1, 1, 3, 5, 1, 1, 2, 1, 0, 1, 0, 1, 2, 4, 0, 1, 2, 0, 2,\n",
    "1, 0, 1, 1, 0, 0]\n",
    ">>> frequencies('apple')"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "12c747c0",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.12"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
