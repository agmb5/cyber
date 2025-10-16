.class public Lcom/dozingcatsoftware/bouncy/VPSoundpool$Player;
.super Ljava/lang/Object;
.source "VPSoundpool.java"

# interfaces
.implements Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dozingcatsoftware/bouncy/VPSoundpool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Player"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playBall()V
    .locals 0

    .line 236
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playBall()V

    return-void
.end method

.method public playFlipper()V
    .locals 0

    .line 240
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playFlipper()V

    return-void
.end method

.method public playMessage()V
    .locals 0

    .line 248
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playMessage()V

    return-void
.end method

.method public playRollover()V
    .locals 0

    .line 252
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playRollover()V

    return-void
.end method

.method public playScore()V
    .locals 0

    .line 244
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playScore()V

    return-void
.end method

.method public playStart()V
    .locals 0

    .line 232
    invoke-static {}, Lcom/dozingcatsoftware/bouncy/VPSoundpool;->playStart()V

    return-void
.end method
