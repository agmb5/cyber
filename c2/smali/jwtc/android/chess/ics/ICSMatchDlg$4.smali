.class Ljwtc/android/chess/ics/ICSMatchDlg$4;
.super Ljava/lang/Object;
.source "ICSMatchDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSMatchDlg;-><init>(Landroid/content/Context;Ljwtc/android/chess/helpers/ResultDialogListener;ILandroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSMatchDlg;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSMatchDlg;)V
    .locals 0

    .line 185
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$4;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 187
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$4;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->dismiss()V

    return-void
.end method
