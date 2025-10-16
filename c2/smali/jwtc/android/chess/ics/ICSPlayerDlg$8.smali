.class Ljwtc/android/chess/ics/ICSPlayerDlg$8;
.super Ljava/lang/Object;
.source "ICSPlayerDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSPlayerDlg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSPlayerDlg;)V
    .locals 0

    .line 125
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 128
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-virtual {v0}, Ljwtc/android/chess/ics/ICSPlayerDlg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const v0, 0x7f0e0098

    .line 129
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-virtual {v1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 136
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 137
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 139
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 140
    new-instance v1, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;

    invoke-direct {v1, p0, v0, p1}, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;-><init>(Ljwtc/android/chess/ics/ICSPlayerDlg$8;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 155
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 157
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSPlayerDlg;->_tvPlayerListConsole:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
