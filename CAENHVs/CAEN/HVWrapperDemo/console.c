/***************************************************************************/
/*                                                                         */
/*        --- CAEN Engineering Srl - Computing Systems Division ---        */
/*                                                                         */
/*    CONSOLE.C                                             		       */
/*                                                                         */
/*    Hides Operating System dependent implementation of generic console   */
/*    I/O routines                                                         */
/*                                                                         */
/*    Source code written in Microsoft Visual C++                          */
/*                                                                         */
/*    This is the Win32 implementation                                     */
/*                                                                         */
/*    Created: January 2000                                                */
/*                                                                         */
/***************************************************************************/
#include <conio.h>
#include <stdio.h>
#include <stdarg.h>
#include <windows.h>
#include "console.h"

static HANDLE con, icon;


/***------------------------------------------------------------------------

  con_init

    --------------------------------------------------------------------***/
void con_init(void)
{
  con = GetStdHandle(STD_OUTPUT_HANDLE);
  icon = GetStdHandle(STD_INPUT_HANDLE);
}

/***------------------------------------------------------------------------

  con_end

    --------------------------------------------------------------------***/
void con_end(void)
{
}

/***------------------------------------------------------------------------

  clrscr

    --------------------------------------------------------------------***/
void clrscr(void)
{
  COORD coordScreen = { 0, 0 }; /* here's where we'll home the cursor */
  BOOL bSuccess;
  DWORD cCharsWritten;
  CONSOLE_SCREEN_BUFFER_INFO csbi; /* to get buffer info */
  DWORD dwConSize; /* number of character cells in the current buffer */

  /* get the number of character cells in the current buffer */
  bSuccess = GetConsoleScreenBufferInfo(con, &csbi);
  //PERR(bSuccess, "GetConsoleScreenBufferInfo");
  dwConSize = csbi.dwSize.X * csbi.dwSize.Y;
  /* fill the entire screen with blanks */
  bSuccess = FillConsoleOutputCharacter(con, (TCHAR) ' ',
      dwConSize, coordScreen, &cCharsWritten);
  //PERR(bSuccess, "FillConsoleOutputCharacter");
  /* get the current text attribute */
  bSuccess = GetConsoleScreenBufferInfo(con, &csbi);
  //PERR(bSuccess, "ConsoleScreenBufferInfo");
  /* now set the buffer's attributes accordingly */
  bSuccess = FillConsoleOutputAttribute(con, csbi.wAttributes,
      dwConSize, coordScreen, &cCharsWritten);
  //PERR(bSuccess, "FillConsoleOutputAttribute");
  /* put the cursor at (0, 0) */
  bSuccess = SetConsoleCursorPosition(con, coordScreen);
  //PERR(bSuccess, "SetConsoleCursorPosition");
  return;
}

/***------------------------------------------------------------------------

  highvideo

    --------------------------------------------------------------------***/
void highvideo(void)
{
  SetConsoleTextAttribute(con, FOREGROUND_INTENSITY);
}

/***------------------------------------------------------------------------

  normvideo

    --------------------------------------------------------------------***/
void normvideo(void)
{
  SetConsoleTextAttribute(con, FOREGROUND_RED | FOREGROUND_GREEN | FOREGROUND_BLUE );
}

/***------------------------------------------------------------------------

  con_getch

    --------------------------------------------------------------------***/
int  con_getch(void)
{
  return _getch();
}

/***------------------------------------------------------------------------

  con_putch

    --------------------------------------------------------------------***/
int con_putch(int ch)
{
  return _putch(ch);
}

/***------------------------------------------------------------------------

  con_puts

    --------------------------------------------------------------------***/
int con_puts(char *s)
{
  int ret;
  ret = _cputs(s);
  cputs("\r\n");
  return ret;
}

/***------------------------------------------------------------------------

  gotoxy

    --------------------------------------------------------------------***/
void gotoxy(int x, int y)
{
  COORD coord;

  coord.X = x-1;
  coord.Y = y-1;
  SetConsoleCursorPosition(con,coord);
}

/***------------------------------------------------------------------------

  con_kbhit

    --------------------------------------------------------------------***/
int con_kbhit(void)
{
  return _kbhit();
}

/***------------------------------------------------------------------------

  con_printf

    --------------------------------------------------------------------***/
int con_printf(char *fmt, ...)
{
  va_list marker;
  char buf[256];

  va_start(marker, fmt);       /* Initialize variable arguments. */
  vsprintf(buf,fmt,marker);
  va_end(marker);              /* Reset variable arguments.      */

  return _cprintf(buf);
}

/***------------------------------------------------------------------------

  con_scanf

    --------------------------------------------------------------------***/
int con_scanf(char *fmt, void *app)
{
  int res;

  res = _cscanf(fmt, app);
  _getch();
  _putch('\n');

  return res;
}

/***------------------------------------------------------------------------

  delay

    --------------------------------------------------------------------***/
void delay(int msec)
{
  Sleep(msec);
}

