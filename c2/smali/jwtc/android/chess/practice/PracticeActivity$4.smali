.class Ljwtc/android/chess/practice/PracticeActivity$4;
.super Ljava/util/TimerTask;
.source "PracticeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/practice/PracticeActivity;->scheduleTimer()V
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

    .line 245
    iput-object p1, p0, Ljwtc/android/chess/practice/PracticeActivity$4;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 249
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$4;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$1000(Ljwtc/android/chess/practice/PracticeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$4;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$1108(Ljwtc/android/chess/practice/PracticeActivity;)I

    .line 253
    iget-object v0, p0, Ljwtc/android/chess/practice/PracticeActivity$4;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v0}, Ljwtc/android/chess/practice/PracticeActivity;->access$1208(Ljwtc/android/chess/practice/PracticeActivity;)I

    .line 255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 256
    iput v1, v0, Landroid/os/Message;->what:I

    .line 257
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 258
    iget-object v2, p0, Ljwtc/android/chess/practice/PracticeActivity$4;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    invoke-static {v2}, Ljwtc/android/chess/practice/PracticeActivity;->access$1200(Ljwtc/android/chess/practice/PracticeActivity;)I

    move-result v2

    const-string v3, "ticks"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 260
    iget-object v1, p0, Ljwtc/android/chess/practice/PracticeActivity$4;->this$0:Ljwtc/android/chess/practice/PracticeActivity;

    iget-object v1, v1, Ljwtc/android/chess/practice/PracticeActivity;->m_timerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
