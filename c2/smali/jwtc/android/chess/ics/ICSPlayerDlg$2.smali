.class Ljwtc/android/chess/ics/ICSPlayerDlg$2;
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

    .line 58
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$2;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$2;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$100(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "History "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$2;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    invoke-static {v1}, Ljwtc/android/chess/ics/ICSPlayerDlg;->access$000(Ljwtc/android/chess/ics/ICSPlayerDlg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSClient;->sendString(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSPlayerDlg$2;->this$0:Ljwtc/android/chess/ics/ICSPlayerDlg;

    iget-object p1, p1, Ljwtc/android/chess/ics/ICSPlayerDlg;->_tvPlayerListConsole:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
