page 50100 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Chicken;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'ID number of the chicken';
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'About the chicken';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Code of the type of chicken';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Last date modified';
                }
                field("Picture"; Rec."Picture")
                {
                    ApplicationArea = All;
                    ToolTip = 'This boii cute af';
                }
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'About the chicken type';
                }
                field("Number of Eggs Produced"; Rec."Number of Eggs Produced")
                {
                    ApplicationArea = All;
                    ToolTip = 'Number of Eggs Produced';
                }
            }
        }
        area(FactBoxes) { }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}