page 50112 "Statments Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statements Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = All;
                    ToolTip = 'Difficulty';

                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        GetSuggestion();
                    end;
                }


            }
            group(Output)
            {
                Caption = 'Output';
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = All;
                    ToolTip = 'Suggestion';
                    Editable = false;

                }
                field(Level; Level)
                {
                    ApplicationArea = All;
                    ToolTip = 'Level';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {

        }
    }

    var
        Difficulty: Integer;
        Level: Text[30];
        Suggestion: Text[80];

    local procedure GetSuggestion()
    var
        myInt: Integer;
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;
}
