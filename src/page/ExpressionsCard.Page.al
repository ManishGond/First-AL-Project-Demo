page 50111 "Expressions Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Expression Card';


    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input Field';
                field("Field 1"; Value1)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the value 1 in this field';

                }
                field("Field 2"; Value2)
                {
                    ApplicationArea = All;
                    ToolTip = 'Enter the value 2 in this field';
                }
            }
            group(Output)
            {
                field(Result; Result)
                {
                    ApplicationArea = All;
                    ToolTip = 'This is the result field';
                    Editable = false;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;
                Caption = 'Execute';
                Image = ExecuteBatch;
                ToolTip = 'Click to calculate the result';
                trigger OnAction()
                begin
                    Result := Value1 > Value2;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        Result: Boolean;
}