.class Ljwtc/android/chess/ics/ICSGameOverDlg$1;
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

    .line 37
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg$1;->this$0:Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSGameOverDlg$1;->this$0:Ljwtc/android/chess/ics/ICSGameOverDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSGameOverDlg;->dismiss()V

    return-void
.end method
