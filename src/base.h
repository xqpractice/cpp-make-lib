#ifndef _BASE_H_
#define _BASE_H_
class Base
{
  char m_name[20];
public:
  Base(const char* name);

public:
  void showMessage();
};
#endif
