unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MessageDlg('Confirma?',
              TMsgDlgType.mtConfirmation,
              [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo],
              0,
              procedure(const AResult: TModalResult)
              begin
                if AResult = mrYes then
                  ShowMessage('mrYes');
              end
              )
end;

end.
