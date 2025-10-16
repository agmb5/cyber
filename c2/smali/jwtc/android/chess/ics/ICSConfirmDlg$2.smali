.class Ljwtc/android/chess/ics/ICSConfirmDlg$2;
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

    .line 41
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg$2;->this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSConfirmDlg$2;->this$0:Ljwtc/android/chess/ics/ICSConfirmDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSConfirmDlg;->dismiss()V

    return-void
.end method
