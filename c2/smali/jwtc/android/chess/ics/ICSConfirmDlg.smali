.class public Ljwtc/android/chess/ics/ICSConfirmDlg;
.super Ljwtc/android/chess/helpers/ResultDialog;
.source "ICSConfirmDlg.java"


# instance fields
.field private _sendString:Ljava/lang/String;

.field private _tvText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Ljwtc/android/chess/helpers/ResultDialog;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V

    const p1, 0x7f0b0035

    .line 24
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->setContentView(I)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f08008f

    .line 28
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg;->_tvText:Landroid/widget/TextView;

    const p1, 0x7f080012

    .line 30
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 31
    new-instance p2, Ljwtc/android/chess/ics/ICSConfirmDlg$1;

    invoke-direct {p2, p0}, Ljwtc/android/chess/ics/ICSConfirmDlg$1;-><init>(Ljwtc/android/chess/ics/ICSConfirmDlg;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f080011

    .line 40
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 41
    new-instance p2, Ljwtc/android/chess/ics/ICSConfirmDlg$2;

    invoke-direct {p2, p0}, Ljwtc/android/chess/ics/ICSConfirmDlg$2;-><init>(Ljwtc/android/chess/ics/ICSConfirmDlg;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/ics/ICSConfirmDlg;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Ljwtc/android/chess/ics/ICSConfirmDlg;->_sendString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/ics/ICSConfirmDlg;Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->setResult(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public setSendString(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg;->_sendString:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg;->_tvText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
