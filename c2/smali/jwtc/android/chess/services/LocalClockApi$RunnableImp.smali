.class Ljwtc/android/chess/services/LocalClockApi$RunnableImp;
.super Ljava/lang/Object;
.source "LocalClockApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/services/LocalClockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableImp"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/services/LocalClockApi;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/services/LocalClockApi;)V
    .locals 0

    .line 99
    iput-object p1, p0, Ljwtc/android/chess/services/LocalClockApi$RunnableImp;->this$0:Ljwtc/android/chess/services/LocalClockApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/services/LocalClockApi;Ljwtc/android/chess/services/LocalClockApi$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Ljwtc/android/chess/services/LocalClockApi$RunnableImp;-><init>(Ljwtc/android/chess/services/LocalClockApi;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    :goto_0
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 105
    iput v1, v0, Landroid/os/Message;->what:I

    .line 106
    iget-object v1, p0, Ljwtc/android/chess/services/LocalClockApi$RunnableImp;->this$0:Ljwtc/android/chess/services/LocalClockApi;

    iget-object v1, v1, Ljwtc/android/chess/services/LocalClockApi;->updateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v0, 0x1f4

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "LocalClockApi"

    const-string v1, "Runnable interrupted"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
