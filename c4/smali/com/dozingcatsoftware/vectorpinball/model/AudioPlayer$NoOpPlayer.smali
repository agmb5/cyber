.class public Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOpPlayer"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;-><init>()V

    sput-object v0, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;
    .locals 1

    .line 21
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer$NoOpPlayer;

    return-object v0
.end method


# virtual methods
.method public playBall()V
    .locals 0

    return-void
.end method

.method public playFlipper()V
    .locals 0

    return-void
.end method

.method public playMessage()V
    .locals 0

    return-void
.end method

.method public playRollover()V
    .locals 0

    return-void
.end method

.method public playScore()V
    .locals 0

    return-void
.end method

.method public playStart()V
    .locals 0

    return-void
.end method
