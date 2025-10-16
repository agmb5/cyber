.class Ljwtc/android/chess/ics/ICSClient$1;
.super Ljava/lang/Object;
.source "ICSClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/ics/ICSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/ics/ICSClient;


# direct methods
.method constructor <init>(Ljwtc/android/chess/ics/ICSClient;)V
    .locals 0

    .line 113
    iput-object p1, p0, Ljwtc/android/chess/ics/ICSClient$1;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "ICSClient"

    const-string v0, "onServiceConnected"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$1;->this$0:Ljwtc/android/chess/ics/ICSClient;

    check-cast p2, Ljwtc/android/chess/ics/ICSServer$LocalBinder;

    invoke-virtual {p2}, Ljwtc/android/chess/ics/ICSServer$LocalBinder;->getService()Ljwtc/android/chess/ics/ICSServer;

    move-result-object p2

    invoke-static {p1, p2}, Ljwtc/android/chess/ics/ICSClient;->access$002(Ljwtc/android/chess/ics/ICSClient;Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/ICSServer;

    .line 118
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$1;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->addListeners()V

    .line 119
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$1;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->showLoginIfNotConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 123
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$1;->this$0:Ljwtc/android/chess/ics/ICSClient;

    invoke-virtual {p1}, Ljwtc/android/chess/ics/ICSClient;->OnSessionEnded()V

    .line 124
    iget-object p1, p0, Ljwtc/android/chess/ics/ICSClient$1;->this$0:Ljwtc/android/chess/ics/ICSClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljwtc/android/chess/ics/ICSClient;->access$002(Ljwtc/android/chess/ics/ICSClient;Ljwtc/android/chess/ics/ICSServer;)Ljwtc/android/chess/ics/ICSServer;

    const-string p1, "ICSClient"

    const-string v0, "onServiceDisconnected"

    .line 125
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
