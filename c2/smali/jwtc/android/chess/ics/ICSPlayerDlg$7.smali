.class Ljwtc/android/chess/ics/ICSPlayerDlg$7;
.super Ljava/lang/Object;
.source "ICSPlayerDlg.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 105
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$7;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 107
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-eq p2, v0, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    .line 111
    :cond_1
    check-cast p1, Landroid/widget/EditText;

    .line 112
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 114
    iget-object p3, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$7;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p3}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$7;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    const-string p2, ""

    .line 116
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
