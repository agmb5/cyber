.class Ljwtc/android/chess/services/LocalClockApi$1;
.super Landroid/os/Handler;
.source "LocalClockApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/services/LocalClockApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/services/LocalClockApi;


# direct methods
.method constructor <init>(Ljwtc/android/chess/services/LocalClockApi;)V
    .locals 0

    .line 17
    iput-object p1, p0, Ljwtc/android/chess/services/LocalClockApi$1;->this$0:Ljwtc/android/chess/services/LocalClockApi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 20
    iget-object v0, p0, Ljwtc/android/chess/services/LocalClockApi$1;->this$0:Ljwtc/android/chess/services/LocalClockApi;

    invoke-virtual {v0}, Ljwtc/android/chess/services/LocalClockApi;->dispatchClockTime()V

    .line 21
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
