codeunit 50101 TryMethods
{
    trigger OnRun()
    begin
        if MyTryMethod() then
            Message('Everything went well')
        else
            Message('Something went wrong');
    end;

    [TryFunction]
    local procedure MyTryMethod()
    begin
        Error('An error occurred during the operation');
    end;
}