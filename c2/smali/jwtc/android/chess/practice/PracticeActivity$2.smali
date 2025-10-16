.class Ljwtc/android/chess/practice/PracticeActivity$2;
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

    .line 117
    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$300(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/android/chess/services/GameApi;

    move-result-object p1

    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$200(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/chess/JNI;

    move-result-object v0

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    invoke-virtual {p1, v0}, Ljwtc/android/chess/services/GameApi;->jumptoMove(I)V

    .line 122
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$400(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/android/chess/services/GameApi;

    move-result-object p1

    invoke-virtual {p1}, Ljwtc/android/chess/services/GameApi;->getPGNSize()I

    move-result p1

    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$500(Ljwtc/android/chess/practice/PracticeActivity;)Ljwtc/chess/JNI;

    move-result-object v0

    invoke-virtual {v0}, Ljwtc/chess/JNI;->getNumBoard()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$600(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 124
    iget-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$2;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$700(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
