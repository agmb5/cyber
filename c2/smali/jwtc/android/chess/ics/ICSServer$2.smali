.class Ljwtc/android/chess/ics/ICSServer$2;
.super Ljava/util/TimerTask;
.source "ICSServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/ics/ICSServer;->startKeepAliveTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSServer;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSServer;)V
    .locals 0

    .line 451
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSServer$2;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 454
    iget-object v0, p0, Ljwtc/android/chess/ics/ICSServer$2;->this$0:Ljwtc/android/chess/ics/ICSServer;

    invoke-static {v0}, Ljwtc/android/chess/ics/ICSServer;->access$100(Ljwtc/android/chess/ics/ICSServer;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
