.class Ljwtc/android/chess/practice/PracticeActivity$1;
.super Landroid/os/Handler;
.source "PracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/practice/PracticeActivity;
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

    .line 50
    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$1;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 54
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$1;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$100(Ljwtc/android/chess/practice/PracticeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity$1;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "ticks"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Ljwtc/android/chess/practice/PracticeActivity;->access$000(Ljwtc/android/chess/practice/PracticeActivity;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
