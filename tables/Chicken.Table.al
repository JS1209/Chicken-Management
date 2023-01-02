table 50100 Chicken
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Number';
        }
        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
        field(3; "Chicken Type Code"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Chicken Type Code';
            TableRelation = "Chicken Type";

            trigger OnValidate()
            begin
                CalcFields("Chicken Type Description");
            end;
        }
        field(4; Picture; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }
        field(5; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(6; "Chicken Type Description"; Text[100])
        {
            fieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Chicken Type".Description
                            where(Code = Field("Chicken Type Code")));
            Caption = 'Description of the Chicken Type';
        }
        field(7; "Number of Eggs Produced"; Decimal)
        {
            FieldClass = FlowField;
            Editable = false;
            Caption = 'Number of Eggs Produced';
            CalcFormula = Sum("Egg Production Line".Quantity where("Chicken No." = field("No."),
                                "Egg Production Date" = field("Date Filter"),
                                "Egg Type Code" = field("Egg Type Filter")));
        }
        field(8; "Egg Type Filter"; Code[20])

        {
            FieldClass = FlowFilter;
            TableRelation = "Egg Type";
            Caption = 'Egg Type Filter';
        }
        field(9; "Date Filter"; Date)
        {
            fieldClass = FlowFilter;
            Caption = 'Date Filter';
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; Description, "Chicken Type Code")
        {

        }
        fieldgroup(Brick; Description, Picture)
        {

        }
    }
    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    var
        EggProductionLine: Record "Egg Production Line";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can"t delete it.', Comment = '%1 = Chicken No.; %2 = Chicken Description';
    begin
        Clear(EggProductionLine);
        EggProductionLine.SetRange("Chicken No.", Rec."No.");
        if not EggProductionLine.IsEmpty() then
            Message(ChickenHasEggsErr, rec."No.", rec.Description);
    end;

    trigger OnRename()
    begin

    end;

}