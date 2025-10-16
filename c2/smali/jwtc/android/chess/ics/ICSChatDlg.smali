.class public Ljwtc/android/chess/ics/ICSChatDlg;
.super Landroid/app/Dialog;
.source "ICSChatDlg.java"


# instance fields
.field private _editChat:Landroid/widget/EditText;

.field private _parent:Ljwtc/android/chess/ics/ICSClient;

.field public _tvChat:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 25
    check-cast p1, Ljwtc/android/chess/ics/ICSClient;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSChatDlg;->_parent:Ljwtc/android/chess/ics/ICSClient;

    const p1, 0x7f0b0026

    .line 27
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSChatDlg;->setContentView(I)V

    const p1, 0x7f08008a

    .line 30
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSChatDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSChatDlg;->_tvChat:Landroid/widget/TextView;

    const p1, 0x7f08003e

    .line 31
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSChatDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ljwtc/android/chess/ics/ICSChatDlg;->_editChat:Landroid/widget/EditText;

    const p1, 0x7f080010

    .line 33
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSChatDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 34
    new-instance v0, Ljwtc/android/chess/ics/ICSChatDlg$1;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSChatDlg$1;-><init>(Ljwtc/android/chess/ics/ICSChatDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f08000f

    .line 45
    invoke-virtual {p0, p1}, Ljwtc/android/chess/ics/ICSChatDlg;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 46
    new-instance v0, Ljwtc/android/chess/ics/ICSChatDlg$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/ics/ICSChatDlg$2;-><init>(Ljwtc/android/chess/ics/ICSChatDlg;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Ljwtc/android/chess/ics/ICSChatDlg;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 2

    .line 63
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSChatDlg;->_editChat:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSChatDlg;->_editChat:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
