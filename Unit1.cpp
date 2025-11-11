//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------

// ---------------- Класи для дерева виразу ----------------
class Telement {
protected:
    Telement *left, *right;
    Telement(Telement *l, Telement *r) { left = l; right = r; }
public:
    virtual ~Telement() { delete left; delete right; }
    virtual float rezult(void) { return 0; }
};

class Number : public Telement {
    float f;
public:
    Number(float F) : Telement(NULL, NULL) { f = F; }
    float rezult(void) { return f; }
};

class Plus : public Telement {
public:
    Plus(Telement *l, Telement *r) : Telement(l, r) {}
    float rezult(void) { return left->rezult() + right->rezult(); }
};

class Mult : public Telement {
public:
    Mult(Telement *l, Telement *r) : Telement(l, r) {}
    float rezult(void) { return left->rezult() * right->rezult(); }
};

// ---------------- Функція побудови дерева ----------------
Telement* form(AnsiString s)
{
    Telement *h;
    int p;
    int l = s.Length();
    AnsiString s1, s2;

    if ((p = s.Pos("+")) > 1) {
        s1 = s.SubString(1, p - 1);
        s2 = s.SubString(p + 1, l - p);
        h = new Plus(form(s1), form(s2));
    }
    else if ((p = s.Pos("*")) > 1) {
        s1 = s.SubString(1, p - 1);
        s2 = s.SubString(p + 1, l - p);
        h = new Mult(form(s1), form(s2));
    }
    else if (s == "x") {
        h = new Number(StrToFloat(Form1->Edit3->Text));
    }
    else {
        h = new Number(StrToFloat(s));
    }
    return h;
}

// ---------------- Реалізація форми ----------------
__fastcall TForm1::TForm1(TComponent* Owner)
    : TForm(Owner)
{
}

// Кнопка "Обчислити"
void __fastcall TForm1::Button1Click(TObject *Sender)
{
    int dec = StrToInt(ComboBox1->Text);

    Telement *x = form(Edit1->Text);
    Edit3->Text = FloatToStrF(x->rezult(), ffFixed, 25, dec);

    Telement *fx = form(Edit2->Text);
    Edit4->Text = FloatToStrF(fx->rezult(), ffFixed, 25, dec);

    delete x;
    delete fx;
}

// Кнопка "Вихід"
void __fastcall TForm1::Button2Click(TObject *Sender)
{
    Close();
}

// Зміна точності
void __fastcall TForm1::ComboBox1Change(TObject *Sender)
{
    Button1Click(Button1);
}
//---------------------------------------------------------------------------
