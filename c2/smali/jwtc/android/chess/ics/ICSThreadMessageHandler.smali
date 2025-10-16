.class public Ljwtc/android/chess/ics/ICSThreadMessageHandler;
.super Landroid/os/Handler;
.source "ICSThreadMessageHandler.java"


# static fields
.field public static final MSG_CONNECTION_CLOSED:I = 0x3

.field public static final MSG_ERROR:I = 0x2

.field public static final MSG_PARSE:I = 0x1


# instance fields
.field private serverWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljwtc/android/chess/ics/ICSServer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSServer;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljwtc/android/chess/ics/ICSThreadMessageHandler;->serverWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 20
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSThreadMessageHandler;->serverWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwtc/android/chess/ics/ICSServer;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Ljwtc/android/chess/ics/ICSServer;->handleThreadMessage(Landroid/os/Message;)V

    .line 23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
