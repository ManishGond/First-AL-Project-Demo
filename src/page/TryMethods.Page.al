page 50101 TryMethods
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    layout
    {
        area(Content)
        {

        }
    }

    actions
    {
        area(Processing)
        {

        }
    }

    var
        myInt: Integer;


    var
        Options: Text[30];
        Selected: Integer;
        Text000: Label 'Save,Delete,Exit,Find';
        Text001: Label 'You Selected option %1.';
        Text002: Label 'Choose one of the following options.';

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        Options := Text000;
        Selected := Dialog.StrMenu(Options, 3, Text002);
        Message(Text001, Selected);
    end;
}