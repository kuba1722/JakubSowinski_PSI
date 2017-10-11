// uzupelnia mape.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <iostream>

using namespace std;


int main()
{/*
	char **m = new char*[10];
	for (int i = 0; i < 10; i++)
	{
		m[i] = new char[10];
	}

	for (int i = 0; i < 10; i++)
	{
		for (int j = 0; j < 10; j++)
		{
			m[i][j] = '-';
		}
	}
	cout << "Wprowadz statki: " << endl;
	int tab[5] = { 5,4,3,2,1 };
	int lstatkow = 15;
	int ileelement=-1;
	int x=-1, y=-1;
	int x1 = -1, y1 = -1;
	bool ok = true;
	for (; lstatkow > 0; lstatkow--)
	{
		//system("cls");
		cout << endl;
		cout << "Pozostalo: " << endl;
		for (int i = 0; i < 5; i++)
		{
			cout << i + 1 << " elementowych " << tab[i] << endl;
		}
	
		while (tab[ileelement]!=0 && ileelement < 1 || ileelement>5)
			{
				cout << endl << "Ilu elementowy? ";
				cin >> ileelement;
			}
		
		cout << "    ";
		for (int k = 0; k < 10; k++)
		{
			cout << k + 1 << " ";
		}
		cout << endl;
		for (int i = 0; i < 10; i++)
		{

			if (i != 9)
			{
				cout << " ";
			}
			cout << i + 1 << " ";
			//if (i != 9)
			{
				cout << " ";
			}
			for (int j = 0; j < 10; j++)
			{
				cout << m[i][j] << " ";
			}
			cout << endl;
		}
		cout << "Gdzie?: ";
		while (x < 0 || x>10)
			{
				cout << "Podaj wspolrzedna poczatku x: ";
				cin >> x;
			}
			while (y < 0 || y>10)
			{
				cout << "Podaj wspolrzedna poczatku y: ";
				cin >> y;
			}
			while (x1 < 0 || x1>10)
			{
				cout << "Podaj wspolrzedna konca x: ";
				cin >> x1;
			}
			while (y1 < 0 || y1>10)
			{
				cout << "Podaj wspolrzedna konca y: ";
				cin >> y1;
			}
			if (x1 < x)
			{
				int a = x;
				x = x1;
				x1 = a;
			}
			if (y1 < y)
			{
				int a = y;
				y = y1;
				y1 = a;
			}
			
			if (x1 - x + y1 - y != ileelement-1)//sprawdza czy jest dobry wymiar wprowadzonych wspolrzednych
			{
				lstatkow++;
				cout << "zly wymiar";
			}
			else {
				
				if (x1 == x)//rowne
					{
						for (int i = y; i <= y1; i++)
						{
							if (m[i - 1][x1 - 1] == 'o')//czy ktoras komorka nie jest zajeta
							{
								cout << "zajete";
								ok = false;
							}
						}
						if (x1 != 10)//prawy
						{
							for (int i = y; i <= y1; i++)
							{
								if (m[i - 1][x] == 'o')//czy ktoras komorka nie jest zajeta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (x != 1)//lewy
						{
							for (int i = y; i <= y1; i++)
							{
								if (m[i - 1][x - 2] == 'o')//czy ktoras komorka nie jest zajeta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (y != 1)//gora
						{
							int liczba = 0, liczba1 = 0;
							if (x == 1)
							{
								liczba = 1;
							}
							else {
								liczba = x - 1;
							}
							if (x == 10)
							{
								liczba1 = 10;
							}
							else {
								liczba1 = x+ 1;
							}
							for (int i = liczba; i <= liczba1; i++)
							{
								if (m[y - 2][i - 1] == 'o')//czy ktoras komorka nie jest zajeta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (y1 != 10)//dol
						{
							int liczba = 0, liczba1 = 0;
							if (x == 1)
							{
								liczba = 1;
							}
							else {
								liczba = x- 1;
							}
							if (x == 10)
							{
								liczba1 = 10;
							}
							else {
								liczba1 = x + 1;
							}
							for (int i = liczba; i <= liczba1; i++)
							{
								if (m[y1][i - 1] == 'o')//czy ktoras komorka nie jest zajeta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (m[x - 1][y - 1] == 'o')//tylko dla jednokomorkowego statku
						{
							ok = false;
						}

					}
					else
					{
						for (int i = x; i <= x1; i++)
						{
							if (m[y1 - 1][i - 1]== 'o')//sprawdza czy komorka jjest pusta
							{
								cout << "zajete";
								ok=false;
							}
						}
						if (y1 != 10)//dol
						{
							for (int i = x; i <= x1; i++)
							{
								if (m[y1][i - 1] == 'o')//sprawdza czy komorka jjest pusta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (y1 != 1)//gora
						{
							for (int i = x; i <= x1; i++)
							{
								if (m[y1 - 2][i - 1] == 'o')//sprawdza czy komorka jjest pusta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (x != 1)//lewo
						{
							int liczba = 0,liczba1=0;
							if (y == 1)
							{
								liczba = 1;
							}
							else {
								liczba = y - 1;
							}
							if (y == 10)
							{
								liczba1=10;
							}
							else {
								liczba1 = y + 1;
							}

							for (int i = liczba; i <= liczba1; i++)
							{
								if (m[i - 1][x - 2] == 'o')//czy ktoras komorka nie jest zajeta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
						if (x1 != 10 )//prawo
						{
							int liczba = 0, liczba1 = 0;
							if (y == 1)
							{
								liczba = 1;
							}
							else {
								liczba = y - 1;
							}
							if (y == 10)
							{
								liczba1 = 10;
							}
							else {
								liczba1 = y + 1;
							}
							for (int i = liczba; i <= liczba1; i++)
							{
								if (m[i - 1][x1] == 'o')//czy ktoras komorka nie jest zajeta
								{
									cout << "zajete";
									ok = false;
								}
							}
						}
					}
					if (ok == true)//jak wszystkie komorki sa puste to uzuperlnij mape
					{
						for (int i = x; i < x1+1; i++)
						{
							for (int j = y; j < y1+1; j++)
							{
								m[j - 1][i - 1] = 'o';
							}
						}
						m[y - 1][x - 1] = 'o';//dla jednokomorkowego statku
						tab[ileelement - 1]--;
						
					}
					else {//w przypadku gdy nie sa spelnione wymagania
						lstatkow++;
					}
					cout << ok;

			
			}
			
			x = -1, y = -1, x1 = -1, y1 = -1;
			ileelement = -1;
			ok = true;

	}
	184	323
	5875	50680
	11695	11877
	150	547
	*/
int x = 2;
char* buff=new char[100];
buff[0] = x;

//buff = (char*)&x;
int c = buff[0];
//cout << c;
x += 10;
buff[1] = x;
//cout << buff[0];
//c = buff[0];
//cout << c;
char **m= new char*[10];
for (int i = 0; i < 10; i++)
{

	m[i] = new char[10];
}for (int i = 0; i < 10; i++)
{
	for (int j = 0; j < 10; j++)
	{
		m[i][j] = '-';
	}
	cout << endl;
}
m[0][0] = 'o';
m[0][1] = 'o';
m[0][2] = 'o';
m[0][3] = 'o';
m[0][4] = 'o';
m[3][0] = 'o';
m[4][0] = 'o';
m[5][0] = 'o';
m[2][0] = 'o';
m[2][2] = 'o';
m[2][3] = 'o';
m[2][4] = 'o';
m[2][5] = 'o';
m[9][9] = 'o';
m[9][8] = 'o';
m[9][7] = 'o';
m[7][9] = 'o';
m[6][9] = 'o';
m[5][9] = 'o';
m[9][0] = 'o';
m[9][1] = 'o';
m[9][2] = 'o';
m[5][5] = 'o';
m[5][6] = 'o';
m[2][9] = 'o';
m[2][8] = 'o';
m[0][9] = 'o';
m[0][8] = 'o';
m[7][3] = 'o';
m[7][4] = 'o';
m[0][6] = 'o';
m[9][4] = 'o';
m[7][7] = 'o';
m[4][2] = 'o';
m[7][0] = 'o';
for (int i = 0; i < 10; i++)
{
	for (int j = 0; j < 10; j++)
	{
		cout << m[i][j] << " ";
	}
	cout << endl;
}
	system("Pause");
    return 0;
}

