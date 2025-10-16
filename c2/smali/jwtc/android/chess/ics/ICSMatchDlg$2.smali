.class Ljwtc/android/chess/ics/ICSMatchDlg$2;
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

    .line 78
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 87
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$500(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$600(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 89
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$700(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$800(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$2;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$900(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
