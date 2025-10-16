.class Ljwtc/android/chess/tools/AdvancedActivity$1$5;
.super Ljava/lang/Object;
.source "AdvancedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/tools/AdvancedActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/AdvancedActivity$1;)V
    .locals 0

    .line 232
    iput-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$5;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 236
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$5;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const-string p2, "ChessPlayer"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "practicePos"

    .line 238
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p2, "practiceTicks"

    .line 239
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object p1, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$5;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p1, p1, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    iget-object p2, p0, Ljwtc/android/chess/tools/AdvancedActivity$1$5;->this$1:Ljwtc/android/chess/tools/AdvancedActivity$1;

    iget-object p2, p2, Ljwtc/android/chess/tools/AdvancedActivity$1;->this$0:Ljwtc/android/chess/tools/AdvancedActivity;

    const v0, 0x7f0e0151

    invoke-virtual {p2, v0}, Ljwtc/android/chess/tools/AdvancedActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljwtc/android/chess/tools/AdvancedActivity;->doToast(Ljava/lang/String;)V

    return-void
.end method
