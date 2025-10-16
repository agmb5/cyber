.class Ljwtc/android/chess/ics/ICSConfirmDlg$1;
.super Ljava/lang/Object;
.source "ICSConfirmDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSConfirmDlg;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSConfirmDlg;)V
    .locals 0

    .line 31
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg$1;->this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 33
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 34
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSConfirmDlg$1;->this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSConfirmDlg;->access$000(Ljwtc/android/chess/ics/ICSConfirmDlg;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSConfirmDlg$1;->this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-static {v0, p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->access$100(Ljwtc/android/chess/ics/ICSConfirmDlg;Landroid/os/Bundle;)V

    .line 37
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg$1;->this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->dismiss()V

    return-void
.end method
