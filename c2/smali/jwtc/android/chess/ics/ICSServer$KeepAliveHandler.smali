.class Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;
.super Landroid/os/Handler;
.source "ICSServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/ics/ICSServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveHandler"
.end annotation


# instance fields
.field icsServerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljwtc/android/chess/ics/ICSServer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljwtc/android/chess/ics/ICSServer;


# direct methods
.method public constructor <init>(Ljwtc/android/chess/ics/ICSServer;)V
    .locals 1

    .line 487
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 488
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;->icsServerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 493
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSServer$KeepAliveHandler;->icsServerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljwtc/android/chess/ics/ICSServer;

    if-eqz p1, :cond_0

    const-string v0, "sought"

    .line 495
    invoke-virtual {p1, v0}, Ljwtc/android/chess/ics/ICSServer;->sendString(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
