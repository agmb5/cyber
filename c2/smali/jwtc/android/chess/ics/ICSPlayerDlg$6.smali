.class Ljwtc/android/chess/ics/ICSPlayerDlg$6;
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

    .line 94
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbChallenge:Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSMatchDlg;->_rbChallenge:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->performClick()Z

    .line 99
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    iget-object v0, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSMatchDlg;->setPlayer(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$6;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSClient;->_dlgMatch:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->show()V

    return-void
.end method
