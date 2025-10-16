.class Ljwtc/android/chess/start$ConnectionFailedListener;
.super Ljava/lang/Object;
.source "start.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljwtc/android/chess/start;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionFailedListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljwtc/android/chess/start;


# direct methods
.method private constructor <init>(Ljwtc/android/chess/start;)V
    .locals 0

    .line 388
    iput-object p1, p0, Ljwtc/android/chess/start$ConnectionFailedListener;->this$0:Ljwtc/android/chess/start;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljwtc/android/chess/start;Ljwtc/android/chess/start$1;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1}, Ljwtc/android/chess/start$ConnectionFailedListener;-><init>(Ljwtc/android/chess/start;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string p1, "start"

    const-string v0, "onConnectionFailed "

    .line 393
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p1, p0, Ljwtc/android/chess/start$ConnectionFailedListener;->this$0:Ljwtc/android/chess/start;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljwtc/android/chess/start;->access$700(Ljwtc/android/chess/start;Z)V

    return-void
.end method
