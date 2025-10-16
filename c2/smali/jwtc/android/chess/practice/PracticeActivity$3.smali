.class Ljwtc/android/chess/practice/PracticeActivity$3;
.super Ljava/lang/Object;
.source "PracticeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/practice/PracticeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/practice/PracticeActivity;


# direct methods
.method constructor <init>(Ljwtc/android/chess/practice/PracticeActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 131
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$600(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$700(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$800(Ljwtc/android/chess/practice/PracticeActivity;)I

    move-result p1

    add-int/2addr p1, v0

    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$900(Ljwtc/android/chess/practice/PracticeActivity;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$808(Ljwtc/android/chess/practice/PracticeActivity;)I

    .line 135
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-virtual {p1}, Ljwtc/android/chess/practice/PracticeActivity;->startPuzzle()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$3;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    const-string v0, "You completed all puzzles!!!"

    invoke-virtual {p1, v0}, Ljwtc/android/chess/practice/PracticeActivity;->setMessage(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
