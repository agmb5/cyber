.class Ljwtc/android/chess/ics/ICSGameOverDlg$4;
.super Ljava/lang/Object;
.source "ICSGameOverDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSGameOverDlg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSGameOverDlg;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSGameOverDlg;)V
    .locals 0

    .line 68
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg$4;->this$0:Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 71
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg$4;->this$0:Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->access$000(Ljwtc/android/chess/ics/ICSGameOverDlg;)Ljwtc/android/chess/ics/ICSClient;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->emailPGN()V

    return-void
.end method
