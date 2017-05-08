#include "iostream"
#include "base.h"

Base::Base(const char* name)
{
  strcpy(m_name, name);
}

void Base::showMessage()
{
  printf("%s\n", "from base class");
  printf("%s\n", m_name);
}
