.class Ljwtc/android/chess/start$MyMediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 272
    iput-object p1, p0, Ljwtc/android/chess/start$MyMediaRouterCallback;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/start;Ljwtc/android/chess/start$1;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Ljwtc/android/chess/start$MyMediaRouterCallback;-><init>(Ljwtc/android/chess/start;)V

    return-void
.end method


# virtual methods
.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    const-string p1, "start"

    const-string v0, "onRouteSelected"

    .line 276
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Ljwtc/android/chess/start$MyMediaRouterCallback;->this$0:Ljwtc/android/chess/start;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/CastDevice;->getFromBundle(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object p2

    invoke-static {p1, p2}, Ljwtc/android/chess/start;->access$502(Ljwtc/android/chess/start;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;

    .line 280
    iget-object p1, p0, Ljwtc/android/chess/start$MyMediaRouterCallback;->this$0:Ljwtc/android/chess/start;

    invoke-static {p1}, Ljwtc/android/chess/start;->access$600(Ljwtc/android/chess/start;)V

    return-void
.end method

.method public onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRouteUnselected: info="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "start"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object p1, p0, Ljwtc/android/chess/start$MyMediaRouterCallback;->this$0:Ljwtc/android/chess/start;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljwtc/android/chess/start;->access$700(Ljwtc/android/chess/start;Z)V

    .line 287
    iget-object p1, p0, Ljwtc/android/chess/start$MyMediaRouterCallback;->this$0:Ljwtc/android/chess/start;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljwtc/android/chess/start;->access$502(Ljwtc/android/chess/start;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;

    return-void
.end method
