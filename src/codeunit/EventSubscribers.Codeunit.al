codeunit 50100 "Event Subscribers"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeModifyEvent', '', true, true)]
    local procedure OnBeforeModifyEvent(var Rec: Record Customer; xRec: Record Customer)
    begin

    end;

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnBeforeValidateEvent', 'Phone No.', true, true)]
    local procedure OnBeforeValidateEvent(var Rec: Record Customer)
    begin
        if (Rec."Phone No.".Contains('+')) then
            Message('You can not enter a + sign in the phone no. field');
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostLines', '', false, false)]
    local procedure OnBeforePostLines(var SalesLine: Record "Sales Line"; SalesHeader: Record "Sales Header")
    begin

    end;
}