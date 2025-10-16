.class Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;
.super Ljava/lang/Object;
.source "ICSPlayerDlg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSPlayerDlg$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/ics/ICSPlayerDlg$8;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSPlayerDlg$8;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 0

    .line 140
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->this$1:Ljwtc/android/chess/ics/ICSPlayerDlg$8;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    .line 145
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->this$1:Ljwtc/android/chess/ics/ICSPlayerDlg$8;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "smoves "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->this$1:Ljwtc/android/chess/ics/ICSPlayerDlg$8;

    iget-object v0, v0, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ljwtc/android/chess/ics/ICSClient;->_sConsoleEditText:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->this$1:Ljwtc/android/chess/ics/ICSPlayerDlg$8;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->this$1:Ljwtc/android/chess/ics/ICSPlayerDlg$8;

    iget-object p3, p3, Ljwtc/android/chess/ics/ICSPlayerDlg$8;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p3}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$8$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
