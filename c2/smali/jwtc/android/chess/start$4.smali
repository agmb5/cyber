.class Ljwtc/android/chess/start$4;
.super Lcom/google/android/gms/cast/Cast$Listener;
.source "start.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljwtc/android/chess/start;->launchReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 404
    iput-object p1, p0, Ljwtc/android/chess/start$4;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    const-string p1, "start"

    const-string v0, "application has stopped"

    .line 408
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object p1, p0, Ljwtc/android/chess/start$4;->this$0:Ljwtc/android/chess/start;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljwtc/android/chess/start;->access$700(Ljwtc/android/chess/start;Z)V

    return-void
.end method
