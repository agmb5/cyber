.class Ljwtc/android/chess/ics/ICSMatchDlg$1;
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

.field final synthetic val$prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSMatchDlg;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 44
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    iput-object p2, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 47
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 50
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$500(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$600(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 54
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$700(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$800(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$900(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v0, "spinTime"

    const-string v2, "5"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v2, "spinIncrement"

    const-string v3, "4"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v2, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v3, "spinVariant"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    iget-object v3, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v5, "spinColor"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget-object v5, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v6, "editRatingRangeMIN"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    iget-object v5, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v6, "editRatingRangeMAX"

    const-string v7, "9999"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    iget-object v6, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v7, "checkRated"

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 65
    iget-object v7, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->val$prefs:Landroid/content/SharedPreferences;

    const-string v8, "checkManual"

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 67
    iget-object v7, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {v7}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1000(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 68
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1100(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 69
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 70
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1300(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 71
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$200(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$1400(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 74
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSMatchDlg$1;->this$0:Ljwtc/android/chess/ics/ICSMatchDlg;

    invoke-static {p1}, Ljwtc/android/chess/ics/ICSMatchDlg;->access$600(Ljwtc/android/chess/ics/ICSMatchDlg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
