.class public Ljwtc/android/chess/start;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "start.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljwtc/android/chess/start$ChessChannel;,
        Ljwtc/android/chess/start$ConnectionFailedListener;,
        Ljwtc/android/chess/start$ConnectionCallbacks;,
        Ljwtc/android/chess/start$MyMediaRouterCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "start"

.field private static _ssActivity:Ljava/lang/String; = ""


# instance fields
.field private _jni:Ljwtc/chess/JNI;

.field private _lastMessage:Ljava/lang/String;

.field private _list:Landroid/widget/ListView;

.field private _timer:Ljava/util/Timer;

.field private mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mApplicationStarted:Z

.field private mCastListener:Lcom/google/android/gms/cast/Cast$Listener;

.field private mChessChannel:Ljwtc/android/chess/start$ChessChannel;

.field private mConnectionCallbacks:Ljwtc/android/chess/start$ConnectionCallbacks;

.field private mConnectionFailedListener:Ljwtc/android/chess/start$ConnectionFailedListener;

.field private mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

.field private mMediaRouterCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

.field private mSelectedDevice:Lcom/google/android/gms/cast/CastDevice;

.field private mSessionId:Ljava/lang/String;

.field private mWaitingForReconnect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljwtc/android/chess/start;)Ljwtc/chess/JNI;
    .locals 0

    .line 48
    iget-object p0, p0, Ljwtc/android/chess/start;->_jni:Ljwtc/chess/JNI;

    return-object p0
.end method

.method static synthetic access$100(Ljwtc/android/chess/start;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ljwtc/android/chess/start;->sendMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Ljwtc/android/chess/start;)Ljwtc/android/chess/start$ChessChannel;
    .locals 0

    .line 48
    iget-object p0, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;

    return-object p0
.end method

.method static synthetic access$1002(Ljwtc/android/chess/start;Ljwtc/android/chess/start$ChessChannel;)Ljwtc/android/chess/start$ChessChannel;
    .locals 0

    .line 48
    iput-object p1, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;

    return-object p1
.end method

.method static synthetic access$1100(Ljwtc/android/chess/start;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Ljwtc/android/chess/start;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1102(Ljwtc/android/chess/start;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Ljwtc/android/chess/start;->mSessionId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Ljwtc/android/chess/start;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Ljwtc/android/chess/start;->mApplicationStarted:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Ljwtc/android/chess/start;->_ssActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    sput-object p0, Ljwtc/android/chess/start;->_ssActivity:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Ljwtc/android/chess/start;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Ljwtc/android/chess/start;->_lastMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Ljwtc/android/chess/start;Lcom/google/android/gms/cast/CastDevice;)Lcom/google/android/gms/cast/CastDevice;
    .locals 0

    .line 48
    iput-object p1, p0, Ljwtc/android/chess/start;->mSelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    return-object p1
.end method

.method static synthetic access$600(Ljwtc/android/chess/start;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljwtc/android/chess/start;->launchReceiver()V

    return-void
.end method

.method static synthetic access$700(Ljwtc/android/chess/start;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ljwtc/android/chess/start;->teardown(Z)V

    return-void
.end method

.method static synthetic access$800(Ljwtc/android/chess/start;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 48
    iget-object p0, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$900(Ljwtc/android/chess/start;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Ljwtc/android/chess/start;->mWaitingForReconnect:Z

    return p0
.end method

.method static synthetic access$902(Ljwtc/android/chess/start;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Ljwtc/android/chess/start;->mWaitingForReconnect:Z

    return p1
.end method

.method public static get_ssActivity()Ljava/lang/String;
    .locals 1

    .line 487
    sget-object v0, Ljwtc/android/chess/start;->_ssActivity:Ljava/lang/String;

    return-object v0
.end method

.method private launchReceiver()V
    .locals 3

    .line 404
    :try_start_0
    new-instance v0, Ljwtc/android/chess/start$4;

    invoke-direct {v0, p0}, Ljwtc/android/chess/start$4;-><init>(Ljwtc/android/chess/start;)V

    iput-object v0, p0, Ljwtc/android/chess/start;->mCastListener:Lcom/google/android/gms/cast/Cast$Listener;

    .line 414
    new-instance v0, Ljwtc/android/chess/start$ConnectionCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljwtc/android/chess/start$ConnectionCallbacks;-><init>(Ljwtc/android/chess/start;Ljwtc/android/chess/start$1;)V

    iput-object v0, p0, Ljwtc/android/chess/start;->mConnectionCallbacks:Ljwtc/android/chess/start$ConnectionCallbacks;

    .line 415
    new-instance v0, Ljwtc/android/chess/start$ConnectionFailedListener;

    invoke-direct {v0, p0, v1}, Ljwtc/android/chess/start$ConnectionFailedListener;-><init>(Ljwtc/android/chess/start;Ljwtc/android/chess/start$1;)V

    iput-object v0, p0, Ljwtc/android/chess/start;->mConnectionFailedListener:Ljwtc/android/chess/start$ConnectionFailedListener;

    .line 416
    iget-object v0, p0, Ljwtc/android/chess/start;->mSelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    iget-object v1, p0, Ljwtc/android/chess/start;->mCastListener:Lcom/google/android/gms/cast/Cast$Listener;

    .line 417
    invoke-static {v0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;->builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object v0

    .line 418
    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    .line 419
    invoke-virtual {v0}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/start;->mConnectionCallbacks:Ljwtc/android/chess/start$ConnectionCallbacks;

    .line 420
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    iget-object v1, p0, Ljwtc/android/chess/start;->mConnectionFailedListener:Ljwtc/android/chess/start$ConnectionFailedListener;

    .line 421
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 424
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "start"

    const-string v2, "Failed launchReceiver"

    .line 426
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 3

    .line 246
    iget-object v0, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 248
    :try_start_0
    iget-object v0, p0, Ljwtc/android/chess/start;->_lastMessage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;

    .line 251
    invoke-virtual {v2}, Ljwtc/android/chess/start$ChessChannel;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/gms/cast/Cast$CastApi;->sendMessage(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Ljwtc/android/chess/start$3;

    invoke-direct {v1, p0, p1}, Ljwtc/android/chess/start$3;-><init>(Ljwtc/android/chess/start;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "start"

    const-string v1, "Exception while sending message"

    .line 264
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private teardown(Z)V
    .locals 6

    const-string v0, "start"

    const-string v1, "teardown"

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v1, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 459
    iget-boolean v4, p0, Ljwtc/android/chess/start;->mApplicationStarted:Z

    if-eqz v4, :cond_3

    .line 460
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v4, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v5, p0, Ljwtc/android/chess/start;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/cast/Cast$CastApi;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    .line 463
    iget-object v1, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;

    if-eqz v1, :cond_1

    .line 464
    sget-object v1, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v4, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v5, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;

    .line 466
    invoke-virtual {v5}, Ljwtc/android/chess/start$ChessChannel;->getNamespace()Ljava/lang/String;

    move-result-object v5

    .line 464
    invoke-interface {v1, v4, v5}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    .line 467
    iput-object v3, p0, Ljwtc/android/chess/start;->mChessChannel:Ljwtc/android/chess/start$ChessChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Exception while removing channel"

    .line 470
    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :cond_1
    :goto_0
    iget-object v0, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 474
    :cond_2
    iput-boolean v2, p0, Ljwtc/android/chess/start;->mApplicationStarted:Z

    .line 476
    :cond_3
    iput-object v3, p0, Ljwtc/android/chess/start;->mApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_4
    if-eqz p1, :cond_5

    .line 479
    iget-object p1, p0, Ljwtc/android/chess/start;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter;->getDefaultRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter;->selectRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 481
    :cond_5
    iput-object v3, p0, Ljwtc/android/chess/start;->mSelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 482
    iput-boolean v2, p0, Ljwtc/android/chess/start;->mWaitingForReconnect:Z

    .line 483
    iput-object v3, p0, Ljwtc/android/chess/start;->mSessionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const-string p2, "start"

    const-string p3, "finish and restart"

    .line 177
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p2, Landroid/content/Intent;

    const-class p3, Ljwtc/android/chess/start;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x4000000

    .line 181
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "RESTART"

    .line 182
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, p2}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ChessPlayer"

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, v0}, Ljwtc/android/chess/start;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "localelanguage"

    const-string v2, ""

    .line 81
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 84
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p1, v1

    .line 89
    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 91
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 92
    iput-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 93
    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const p1, 0x7f0b0063

    .line 96
    invoke-virtual {p0, p1}, Ljwtc/android/chess/start;->setContentView(I)V

    .line 98
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "RESTART"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    invoke-virtual {p0}, Ljwtc/android/chess/start;->finish()V

    .line 100
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ljwtc/android/chess/start;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0, p1}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    .line 104
    :cond_1
    invoke-static {}, Ljwtc/chess/JNI;->getInstance()Ljwtc/chess/JNI;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/start;->_jni:Ljwtc/chess/JNI;

    .line 106
    iput-object v2, p0, Ljwtc/android/chess/start;->_lastMessage:Ljava/lang/String;

    .line 108
    new-instance v3, Ljava/util/Timer;

    const/4 p1, 0x1

    invoke-direct {v3, p1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v3, p0, Ljwtc/android/chess/start;->_timer:Ljava/util/Timer;

    .line 109
    new-instance v4, Ljwtc/android/chess/start$1;

    invoke-direct {v4, p0}, Ljwtc/android/chess/start$1;-><init>(Ljwtc/android/chess/start;)V

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x1f4

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 116
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020019

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    const p1, 0x7f080065

    .line 118
    invoke-virtual {p0, p1}, Ljwtc/android/chess/start;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Ljwtc/android/chess/start;->_list:Landroid/widget/ListView;

    .line 119
    new-instance v0, Ljwtc/android/chess/start$2;

    invoke-direct {v0, p0}, Ljwtc/android/chess/start$2;-><init>(Ljwtc/android/chess/start;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/start;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 168
    new-instance p1, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-direct {p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>()V

    const-string v0, "05EB93C6"

    .line 169
    invoke-static {v0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, p0, Ljwtc/android/chess/start;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 170
    new-instance p1, Ljwtc/android/chess/start$MyMediaRouterCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljwtc/android/chess/start$MyMediaRouterCallback;-><init>(Ljwtc/android/chess/start;Ljwtc/android/chess/start$1;)V

    iput-object p1, p0, Ljwtc/android/chess/start;->mMediaRouterCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 231
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 232
    invoke-virtual {p0}, Ljwtc/android/chess/start;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f080106

    .line 233
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 236
    invoke-static {p1}, Landroidx/core/view/MenuItemCompat;->getActionProvider(Landroid/view/MenuItem;)Landroidx/core/view/ActionProvider;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/app/MediaRouteActionProvider;

    .line 238
    iget-object v0, p0, Ljwtc/android/chess/start;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "start"

    const-string v1, "onDestroy"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 225
    invoke-direct {p0, v0}, Ljwtc/android/chess/start;->teardown(Z)V

    .line 226
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPostResume()V
    .locals 5

    .line 190
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPostResume()V

    const-string v0, "ChessPlayer"

    const/4 v1, 0x0

    .line 192
    invoke-virtual {p0, v0, v1}, Ljwtc/android/chess/start;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "RESTART"

    .line 193
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p0}, Ljwtc/android/chess/start;->finish()V

    .line 195
    new-instance v3, Landroid/content/Intent;

    const-class v4, Ljwtc/android/chess/start;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x4000000

    .line 197
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    invoke-virtual {p0, v3}, Ljwtc/android/chess/start;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 209
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 211
    iget-object v0, p0, Ljwtc/android/chess/start;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Ljwtc/android/chess/start;->mMediaRouteSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Ljwtc/android/chess/start;->mMediaRouterCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 218
    iget-object v0, p0, Ljwtc/android/chess/start;->mMediaRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Ljwtc/android/chess/start;->mMediaRouterCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 219
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
