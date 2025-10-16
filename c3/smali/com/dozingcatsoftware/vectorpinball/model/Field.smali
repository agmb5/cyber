.class public Lcom/dozingcatsoftware/vectorpinball/model/Field;
.super Ljava/lang/Object;
.source "Field.java"

# interfaces
.implements Lcom/badlogic/gdx/physics/box2d/ContactListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;,
        Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;
    }
.end annotation


# static fields
.field static final STUCK_BALL_NANOS:J = 0x2540be400L

.field static final ZOOM_DURATION_NANOS:J = 0x3b9aca00L


# instance fields
.field RAND:Ljava/util/Random;

.field activatedFlippers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation
.end field

.field audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

.field ballStartGameTimeNanos:Ljava/lang/Long;

.field balls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Ball;",
            ">;"
        }
    .end annotation
.end field

.field bodyToFieldElement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation
.end field

.field contactedBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Ball;",
            ">;"
        }
    .end annotation
.end field

.field contactedFixtures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

.field private drawOrdering:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private elementsInDrawOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;",
            ">;"
        }
    .end annotation
.end field

.field fieldElementsArray:[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

.field fieldElementsByID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation
.end field

.field fieldElementsToTick:[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

.field gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

.field gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

.field gameTimeNanos:J

.field lastBallLaunchGameTimeNanos:Ljava/lang/Long;

.field lastBallPositionX:F

.field lastBallPositionY:F

.field lastMultiplerIncrementGameTimeNanos:Ljava/lang/Long;

.field layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

.field lostBallWallTimeMillis:Ljava/lang/Long;

.field milliTimeFn:Lj$/util/function/LongSupplier;

.field multiballStartGameTimeNanos:Ljava/lang/Long;

.field nanosSinceBallMoved:J

.field scheduledActions:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field shapes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Shape;",
            ">;"
        }
    .end annotation
.end field

.field stringResolver:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

.field usedMercyBall:Z

.field worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

.field zoomCenter:Lcom/badlogic/gdx/math/Vector2;

.field zoomNanos:J


# direct methods
.method public static synthetic $r8$lambda$_mwSEseLusWbi1o-ofw-CZEPxPE(Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;)I
    .locals 0

    invoke-static {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->drawOrderRank(Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lj$/util/function/LongSupplier;Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->RAND:Ljava/util/Random;

    .line 53
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->usedMercyBall:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballStartGameTimeNanos:Ljava/lang/Long;

    .line 67
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->multiballStartGameTimeNanos:Ljava/lang/Long;

    .line 68
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallLaunchGameTimeNanos:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lostBallWallTimeMillis:Ljava/lang/Long;

    .line 71
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastMultiplerIncrementGameTimeNanos:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    .line 76
    iput-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomNanos:J

    .line 77
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomCenter:Lcom/badlogic/gdx/math/Vector2;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    .line 471
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda3;

    .line 472
    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sget-object v1, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda2;

    .line 473
    invoke-static {v0, v1}, Lj$/util/Comparator$-EL;->thenComparingInt(Ljava/util/Comparator;Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->drawOrdering:Ljava/util/Comparator;

    .line 505
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->activatedFlippers:Ljava/util/ArrayList;

    .line 576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedBalls:Ljava/util/ArrayList;

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedFixtures:Ljava/util/ArrayList;

    .line 85
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->milliTimeFn:Lj$/util/function/LongSupplier;

    .line 86
    iput-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->stringResolver:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    .line 87
    iput-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    return-void
.end method

.method private _startGame(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballStartGameTimeNanos:Ljava/lang/Long;

    .line 191
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->multiballStartGameTimeNanos:Ljava/lang/Long;

    .line 192
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lostBallWallTimeMillis:Ljava/lang/Long;

    .line 193
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallLaunchGameTimeNanos:Ljava/lang/Long;

    .line 194
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastMultiplerIncrementGameTimeNanos:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->usedMercyBall:Z

    .line 196
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getNumberOfBalls()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->setTotalBalls(I)V

    .line 197
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->setUnlimitedBalls(Z)V

    .line 198
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->startNewGame()V

    .line 199
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->gameStarted(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method private ballWithBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lcom/dozingcatsoftware/vectorpinball/model/Ball;
    .locals 3

    const/4 v0, 0x0

    .line 606
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 607
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 608
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private canBeZoomedIn()Z
    .locals 2

    .line 675
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkForStuckBall(J)V
    .locals 8

    .line 701
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-wide/16 p1, -0x1

    .line 702
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    return-void

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 706
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    .line 707
    iget-wide v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    .line 709
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallPositionX:F

    .line 710
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallPositionY:F

    .line 711
    iput-wide v5, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    return-void

    .line 714
    :cond_1
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getLinearVelocity()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/math/Vector2;->len2()F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_7

    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallPositionX:F

    iget v7, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallPositionY:F

    .line 715
    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/math/Vector2;->dst2(FF)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    goto :goto_2

    .line 723
    :cond_2
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFlipperElements()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 724
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 725
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;

    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isFlipperEngaged()Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 728
    :cond_4
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    const-wide p1, 0x2540be400L

    cmp-long v4, v2, p1

    if-lez v4, :cond_6

    .line 730
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->stringResolver:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v1, "bump_message"

    invoke-interface {p1, v1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 732
    new-instance p1, Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->RAND:Ljava/util/Random;

    invoke-virtual {p2}, Ljava/util/Random;->nextBoolean()Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    const/high16 p2, -0x40800000    # -1.0f

    :goto_1
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p1, p2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    .line 733
    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->applyLinearImpulse(Lcom/badlogic/gdx/math/Vector2;)V

    .line 734
    iput-wide v5, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    :cond_6
    return-void

    .line 717
    :cond_7
    :goto_2
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallPositionX:F

    .line 718
    iget p1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iput p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallPositionY:F

    .line 719
    iput-wide v5, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->nanosSinceBallMoved:J

    return-void
.end method

.method private clearBallContacts()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 581
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedFixtures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static createDelegateFromLayoutClass(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;
    .locals 2

    .line 171
    iget-object p0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getDelegateClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x2e

    .line 173
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.dozingcatsoftware.vectorpinball.fields."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 177
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 180
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 185
    :cond_1
    new-instance p0, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;

    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/BaseFieldDelegate;-><init>()V

    return-object p0
.end method

.method private doBallLost()V
    .locals 4

    .line 385
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->milliTimeFn:Lj$/util/function/LongSupplier;

    invoke-interface {v0}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lostBallWallTimeMillis:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->usedMercyBall:Z

    .line 388
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getExtraBalls()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 389
    :goto_0
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->doNextBall()V

    .line 391
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shouldPreserveLastMultiplierIncrease()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->incrementScoreMultiplier()V

    :cond_1
    const/4 v3, 0x0

    .line 394
    iput-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastMultiplerIncrementGameTimeNanos:Ljava/lang/Long;

    if-eqz v1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "shoot_again_message"

    .line 399
    invoke-virtual {p0, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v1, v2, [Ljava/lang/Object;

    .line 402
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getBallNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "ball_number_message"

    invoke-virtual {p0, v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    const-wide/16 v0, 0x5dc

    .line 407
    new-instance v2, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    goto :goto_2

    .line 410
    :cond_4
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->endGame()V

    .line 412
    :goto_2
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->ballLost(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method private static drawOrderRank(Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;)I
    .locals 1

    .line 476
    instance-of v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/BumperElement;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 479
    :cond_0
    instance-of v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 482
    :cond_1
    instance-of p0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private launchMercyBall()V
    .locals 4

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->usedMercyBall:Z

    .line 326
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->stringResolver:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ball_saved_message"

    invoke-interface {v1, v3, v2}, Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    .line 327
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;JZ)V

    .line 328
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    return-void
.end method

.method private processBallContacts()V
    .locals 7

    const/4 v0, 0x0

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 589
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 590
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedFixtures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 591
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->bodyToFieldElement:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    if-eqz v3, :cond_1

    .line 593
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v4

    invoke-virtual {v3, v1, v4, p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->handleCollision(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    .line 594
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->delegate:Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    if-eqz v4, :cond_0

    .line 595
    invoke-virtual {v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v2

    invoke-interface {v4, p0, v3, v2, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->processCollision(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;Lcom/badlogic/gdx/physics/box2d/Body;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 597
    :cond_0
    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getScore()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-eqz v6, :cond_1

    .line 598
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getScore()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->addScore(J)V

    .line 599
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    invoke-interface {v1}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playScore()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processElementTicks(J)V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsToTick:[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    array-length v1, v0

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 247
    invoke-virtual {v3, p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processGameMessages()V
    .locals 5

    .line 666
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    if-eqz v0, :cond_0

    .line 667
    iget-wide v0, v0, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;->creationTimeMillis:J

    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    iget-wide v2, v2, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;->durationMillis:J

    add-long/2addr v0, v2

    .line 668
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->milliTimeFn:Lj$/util/function/LongSupplier;

    invoke-interface {v2}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x0

    .line 669
    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    :cond_0
    return-void
.end method

.method private processScheduledActions()V
    .locals 6

    .line 256
    :goto_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduledActions:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;

    if-eqz v0, :cond_0

    .line 257
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    iget-object v3, v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->actionTimeNanos:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 258
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduledActions:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 259
    iget-object v0, v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->action:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processZoom(J)V
    .locals 4

    .line 688
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->canBeZoomedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x3b9aca00

    .line 689
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomNanos:J

    add-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 690
    iget-wide v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomNanos:J

    sub-long/2addr v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomNanos:J

    .line 692
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomCenter:Lcom/badlogic/gdx/math/Vector2;

    :goto_1
    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomCenter:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method private restoreLostBallInMultiball()V
    .locals 5

    .line 339
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallLaunchGameTimeNanos:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->stringResolver:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "ball_saved_message"

    invoke-interface {v0, v4, v1}, Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 343
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;JZ)V

    .line 344
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    return-void
.end method

.method private setFlippersEngaged(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;Z)V"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 517
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;

    .line 518
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isFlipperEngaged()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz p2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    .line 524
    :cond_1
    invoke-virtual {v4, p2}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->setFlipperEngaged(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    if-nez v2, :cond_4

    .line 528
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    invoke-interface {p1}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playFlipper()V

    .line 529
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementsArray()[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object p1

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p1, v1

    .line 530
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0, v2}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->flippersActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 532
    :cond_3
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object p1

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->activatedFlippers:Ljava/util/ArrayList;

    invoke-interface {p1, p0, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->flippersActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method private shouldLaunchMercyBall()Z
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballStartGameTimeNanos:Ljava/lang/Long;

    .line 321
    iget-boolean v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->usedMercyBall:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getMercyBallDurationNanos()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldPreserveLastMultiplierIncrease()Z
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastMultiplerIncrementGameTimeNanos:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 377
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getPreserveMultiplierIncreaseDurationNanos()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldRestoreLostBallInMultiball()Z
    .locals 5

    .line 332
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->multiballStartGameTimeNanos:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    .line 333
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getMultiballSaverDurationNanos()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addExtraBall()V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->addExtraBall()V

    return-void
.end method

.method public addScore(J)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->addScore(J)V

    return-void
.end method

.method public ballLostWithinMillis(J)Z
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lostBallWallTimeMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->milliTimeFn:Lj$/util/function/LongSupplier;

    invoke-interface {v0}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lostBallWallTimeMillis:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 0

    return-void
.end method

.method public createBall(FF)Lcom/dozingcatsoftware/vectorpinball/model/Ball;
    .locals 7

    .line 274
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getBallRadius()F

    move-result v4

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    .line 275
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getBallColor()I

    move-result v5

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getSecondaryBallColor()I

    move-result v6

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    .line 274
    invoke-static/range {v0 .. v6}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->create(Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;IFFFII)Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-result-object p1

    .line 276
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 495
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFieldElementsArray()[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 496
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 498
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->drawOrdering:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->elementsInDrawOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;

    invoke-interface {v1, p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/IDrawable;->draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V
    .locals 2

    .line 622
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballWithBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object p1

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureB()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballWithBody(Lcom/badlogic/gdx/physics/box2d/Body;)Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 629
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Contact;->getFixtureA()Lcom/badlogic/gdx/physics/box2d/Fixture;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 634
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->contactedFixtures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public endGame()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    invoke-interface {v0}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playStart()V

    .line 554
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 555
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->destroySelf()V

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->setGameInProgress(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "game_over_message"

    .line 559
    invoke-virtual {p0, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    .line 560
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->gameEnded(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V

    return-void
.end method

.method public getAudioPlayer()Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    return-object v0
.end method

.method public getBalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Ball;",
            ">;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebugMessage()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->delegate:Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    return-object v0
.end method

.method public getFieldElementById(Ljava/lang/String;)Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsByID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    return-object p1
.end method

.method public getFieldElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;",
            ">;"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getFieldElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFieldElementsArray()[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsArray:[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    return-object v0
.end method

.method public getFlipperElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getFlipperElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGameMessage()Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    return-object v0
.end method

.method public getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    return-object v0
.end method

.method public getGameTimeNanos()J
    .locals 2

    .line 835
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    return-wide v0
.end method

.method public getHeight()F
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getHeight()F

    move-result v0

    return v0
.end method

.method public getLaunchPosition()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getLaunchPosition()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScore()J
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getScore()J

    move-result-wide v0

    return-wide v0
.end method

.method public getScoreMultiplier()D
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getScoreMultiplier()D

    move-result-wide v0

    return-wide v0
.end method

.method public getScriptText()Ljava/lang/String;
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getScriptText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetTimeRatio()F
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getTargetTimeRatio()F

    move-result v0

    return v0
.end method

.method public getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getValueWithKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()F
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getWidth()F

    move-result v0

    return v0
.end method

.method public hasActiveElements()Z
    .locals 6

    .line 430
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->isFieldActive(Lcom/dozingcatsoftware/vectorpinball/model/Field;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 435
    :cond_1
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method public hasBallAtLayer(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 743
    :goto_0
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 744
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getLayer()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public incrementAndDisplayScoreMultiplier(J)V
    .locals 3

    .line 791
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastMultiplerIncrementGameTimeNanos:Ljava/lang/Long;

    .line 792
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->incrementScoreMultiplier()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 793
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->getScoreMultiplier()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "multiplier_message"

    invoke-virtual {p0, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-virtual {p0, v0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;J)V

    return-void
.end method

.method synthetic lambda$doBallLost$0$com-dozingcatsoftware-vectorpinball-model-Field(Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x5dc

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;JZ)V

    return-void
.end method

.method public launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getLaunchPosition()Ljava/util/List;

    move-result-object v0

    .line 301
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getLaunchVelocity()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 302
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->createBall(FF)Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getBody()Lcom/badlogic/gdx/physics/box2d/Body;

    move-result-object v3

    new-instance v5, Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {v5, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/physics/box2d/Body;->setLinearVelocity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 304
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->playBallLaunchSound()V

    const/4 v1, 0x0

    .line 305
    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lostBallWallTimeMillis:Ljava/lang/Long;

    .line 306
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->lastBallLaunchGameTimeNanos:Ljava/lang/Long;

    .line 307
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 308
    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->multiballStartGameTimeNanos:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 309
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->multiballStartGameTimeNanos:Ljava/lang/Long;

    goto :goto_0

    .line 313
    :cond_0
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballStartGameTimeNanos:Ljava/lang/Long;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public playBallLaunchSound()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    invoke-interface {v0}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playBall()V

    return-void
.end method

.method public postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V
    .locals 0

    return-void
.end method

.method public preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V
    .locals 0

    return-void
.end method

.method public removeBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    .line 350
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shouldLaunchMercyBall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchMercyBall()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->doBallLost()V

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shouldRestoreLostBallInMultiball()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->restoreLostBallInMultiball()V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->destroySelf()V

    .line 371
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeDeadBalls()V
    .locals 8

    .line 443
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getLaunchDeadZone()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 447
    :goto_0
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 448
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 449
    invoke-virtual {v4}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    .line 450
    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v7, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget v6, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/4 v7, 0x2

    .line 451
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    if-nez v1, :cond_1

    .line 453
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 455
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 460
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 461
    invoke-virtual {p0, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeBallWithoutBallLoss(Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public resetForLayoutMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;->INSTANCE:Lcom/dozingcatsoftware/vectorpinball/model/Field$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->resetForLayoutMap(Ljava/util/Map;Lj$/util/function/Function;)V

    return-void
.end method

.method public resetForLayoutMap(Ljava/util/Map;Lj$/util/function/Function;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lj$/util/function/Function<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Field;",
            "Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    invoke-direct {v0, p0}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;-><init>(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    .line 136
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    invoke-direct {v0, p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;-><init>(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;)V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    .line 137
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getGravity()F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->setGravity(Lcom/badlogic/gdx/math/Vector2;)V

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->balls:Ljava/util/ArrayList;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shapes:Ljava/util/ArrayList;

    .line 141
    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduledActions:Ljava/util/PriorityQueue;

    const-wide/16 v0, 0x0

    .line 142
    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    .line 145
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->bodyToFieldElement:Ljava/util/Map;

    .line 146
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsByID:Ljava/util/Map;

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getFieldElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    .line 150
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsByID:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getElementId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->getBodies()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 154
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->bodyToFieldElement:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->shouldCallTick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    new-array v1, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    .line 160
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsToTick:[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    .line 161
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getFieldElements()Ljava/util/List;

    move-result-object p1

    new-array v0, v0, [Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->fieldElementsArray:[Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;

    .line 163
    invoke-interface {p2, p0}, Lj$/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    iput-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->delegate:Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    return-void
.end method

.method public varargs resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->stringResolver:Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;

    invoke-interface {v0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/IStringResolver;->resolveString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAction(JLjava/lang/Runnable;)V
    .locals 4

    .line 289
    new-instance v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;

    invoke-direct {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;-><init>()V

    .line 290
    iget-wide v1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->actionTimeNanos:Ljava/lang/Long;

    .line 291
    iput-object p3, v0, Lcom/dozingcatsoftware/vectorpinball/model/Field$ScheduledAction;->action:Ljava/lang/Runnable;

    .line 292
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduledActions:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAllFlippersEngaged(Z)V
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getFlipperElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setFlippersEngaged(Ljava/util/List;Z)V

    return-void
.end method

.method public setLeftFlippersEngaged(Z)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getLeftFlipperElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setFlippersEngaged(Ljava/util/List;Z)V

    return-void
.end method

.method public setRightFlippersEngaged(Z)V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->layout:Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/FieldLayout;->getRightFlipperElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setFlippersEngaged(Ljava/util/List;Z)V

    return-void
.end method

.method public setScoreMultiplier(D)V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameState:Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    invoke-virtual {v0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->setScoreMultiplier(D)V

    return-void
.end method

.method public setShapes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/model/Shape;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shapes:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 270
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->shapes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public showGameMessage(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->showGameMessage(Ljava/lang/String;JZ)V

    return-void
.end method

.method public showGameMessage(Ljava/lang/String;JZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 653
    iget-object p4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->audioPlayer:Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    invoke-interface {p4}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playMessage()V

    .line 654
    :cond_0
    new-instance p4, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    invoke-direct {p4}, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;-><init>()V

    iput-object p4, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    .line 655
    iput-object p1, p4, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;->text:Ljava/lang/String;

    .line 656
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    iput-wide p2, p1, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;->durationMillis:J

    .line 657
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameMessage:Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->milliTimeFn:Lj$/util/function/LongSupplier;

    invoke-interface {p2}, Lj$/util/function/LongSupplier;->getAsLong()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/dozingcatsoftware/vectorpinball/model/GameMessage;->creationTimeMillis:J

    return-void
.end method

.method public startGame()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->_startGame(Z)V

    return-void
.end method

.method public startGameWithUnlimitedBalls()V
    .locals 1

    const/4 v0, 0x1

    .line 207
    invoke-direct {p0, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->_startGame(Z)V

    return-void
.end method

.method public tick(JI)V
    .locals 4

    long-to-float v0, p1

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->clearBallContacts()V

    .line 229
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->worlds:Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;

    const/16 v3, 0xa

    invoke-virtual {v2, v0, v3, v3}, Lcom/dozingcatsoftware/vectorpinball/model/WorldLayers;->step(FII)V

    .line 230
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->processBallContacts()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    :cond_0
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->gameTimeNanos:J

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->processElementTicks(J)V

    .line 235
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->processScheduledActions()V

    .line 236
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->processGameMessages()V

    .line 237
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->processZoom(J)V

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->checkForStuckBall(J)V

    .line 240
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object p3

    invoke-interface {p3, p0, p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    return-void
.end method

.method public zoomCenterPoint()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .line 683
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomCenter:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getLaunchPosition()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getLaunchPosition()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    :goto_0
    return-object v0
.end method

.method public zoomRatio()F
    .locals 4

    .line 679
    iget-wide v0, p0, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomNanos:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
