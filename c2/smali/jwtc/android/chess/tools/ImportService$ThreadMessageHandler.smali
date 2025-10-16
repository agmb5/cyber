.class Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;
.super Landroid/os/Handler;
.source "ImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/tools/ImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadMessageHandler"
.end annotation


# instance fields
.field private serverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljwtc/android/chess/tools/ImportService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljwtc/android/chess/tools/ImportService;


# direct methods
.method constructor <init>(Ljwtc/android/chess/tools/ImportService;Ljwtc/android/chess/tools/ImportService;)V
    .locals 0

    .line 357
    iput-object p1, p0, Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;->this$0:Ljwtc/android/chess/tools/ImportService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 358
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;->serverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 363
    iget-object v0, p0, Ljwtc/android/chess/tools/ImportService$ThreadMessageHandler;->serverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/tools/ImportService;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p1}, Ljwtc/android/chess/tools/ImportService;->handleThreadMessage(Landroid/os/Message;)V

    .line 366
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
