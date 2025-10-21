.class public Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;
.super Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;
.source "RolloverGroupElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;
    }
.end annotation


# static fields
.field public static final COLOR_PROPERTY:Ljava/lang/String; = "color"

.field public static final CYCLE_ON_FLIPPER_PROPERTY:Ljava/lang/String; = "cycleOnFlipper"

.field static final DEFAULT_COLOR:I

.field public static final IGNORE_BALL_PROPERTY:Ljava/lang/String; = "ignoreBall"

.field public static final POSITION_PROPERTY:Ljava/lang/String; = "position"

.field public static final RADIUS_PROPERTY:Ljava/lang/String; = "radius"

.field public static final RESET_DELAY_PROPERTY:Ljava/lang/String; = "reset"

.field public static final ROLLOVERS_PROPERTY:Ljava/lang/String; = "rollovers"

.field public static final SCORE_PROPERTY:Ljava/lang/String; = "score"

.field public static final TOGGLE_OFF_PROPERTY:Ljava/lang/String; = "toggleOff"


# instance fields
.field activeRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field allHitRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field canToggleOff:Z

.field cycleOnFlipper:Z

.field defaultRadius:F

.field defaultResetDelay:F

.field ignoreBall:Z

.field isVisible:Z

.field newActiveRollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field rollovers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field rolloversHitByBall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field

.field rolloversHitOnPreviousTick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 47
    invoke-static {v0, v1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromRGB(III)I

    move-result v0

    sput v0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->DEFAULT_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isVisible:Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitByBall:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allHitRollovers:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    return-void
.end method

.method private getRolloversHitByBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dozingcatsoftware/vectorpinball/model/Ball;",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 101
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getLayer()I

    move-result v0

    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getLayer()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 106
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    .line 107
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Ball;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    .line 108
    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v4, v5

    .line 109
    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v5, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v5

    mul-float v4, v4, v4

    mul-float v3, v3, v3

    add-float/2addr v4, v3

    .line 111
    iget v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radiusSquared:F

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_1

    .line 112
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public activateFirstUnactivatedRollover()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    .line 128
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public allRolloversActive()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createBodies(Lcom/badlogic/gdx/physics/box2d/World;)V
    .locals 0

    return-void
.end method

.method public cycleRollovers(Z)V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 253
    :goto_0
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    .line 254
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    goto :goto_1

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 256
    :goto_1
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 257
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_4
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->newActiveRollovers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public draw(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 6

    .line 290
    iget-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isVisible:Z

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    sget p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->DEFAULT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->currentColor(I)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 298
    iget-object v2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    .line 300
    iget-object v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->color:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->color:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p1

    .line 302
    :goto_1
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    iget-object v4, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    invoke-interface {p2, v4, v5, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->fillCircle(FFFI)V

    goto :goto_2

    .line 306
    :cond_2
    iget-object v4, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    invoke-interface {p2, v4, v5, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->frameCircle(FFFI)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public finishCreateElement(Ljava/util/Map;Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FieldElementCollection;",
            ")V"
        }
    .end annotation

    .line 62
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "toggleOff"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->canToggleOff:Z

    .line 63
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "cycleOnFlipper"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->cycleOnFlipper:Z

    .line 64
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "ignoreBall"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->ignoreBall:Z

    const-string p2, "radius"

    .line 65
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->defaultRadius:F

    const-string v0, "reset"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    iput v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->defaultResetDelay:F

    const-string v1, "rollovers"

    .line 68
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 70
    new-instance v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    invoke-direct {v2}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;-><init>()V

    .line 71
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "position"

    .line 73
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 74
    new-instance v4, Lcom/badlogic/gdx/math/Vector2;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v4, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 77
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v3

    goto :goto_1

    :cond_0
    iget v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->defaultRadius:F

    :goto_1
    iput v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    const-string v3, "color"

    .line 79
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Color;->fromList(Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iput-object v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->color:Ljava/lang/Integer;

    const-string v3, "score"

    .line 81
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_2
    iget-wide v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->score:J

    :goto_3
    iput-wide v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->score:J

    .line 83
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/dozingcatsoftware/vectorpinball/util/MathUtils;->asFloat(Ljava/lang/Object;)F

    move-result v1

    goto :goto_4

    :cond_3
    iget v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->defaultResetDelay:F

    :goto_4
    iput v1, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->resetDelay:F

    .line 86
    iget v1, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    iget v3, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    mul-float v1, v1, v3

    iput v1, v2, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radiusSquared:F

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public flippersActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dozingcatsoftware/vectorpinball/model/Field;",
            "Ljava/util/List<",
            "Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->cycleOnFlipper:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 236
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 237
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;

    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/elements/FlipperElement;->isRightFlipper()Z

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->cycleRollovers(Z)V

    :cond_1
    return-void
.end method

.method public getBodies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreBall()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->ignoreBall:Z

    return v0
.end method

.method public getRolloverCenterAtIndex(I)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    iget-object p1, p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public getRolloverRadiusAtIndex(I)F
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    iget p1, p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    return p1
.end method

.method public getVisible()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isVisible:Z

    return v0
.end method

.method public isRolloverActiveAtIndex(I)Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$tick$0$com-dozingcatsoftware-vectorpinball-elements-RolloverGroupElement(Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public numberOfRollovers()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setAllRolloversActivated(Z)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setIgnoreBall(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->ignoreBall:Z

    return-void
.end method

.method public setRolloverActiveAtIndex(IZ)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setRolloverCenterAtIndex(IDD)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    .line 159
    iget-object v0, p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    double-to-float p2, p2

    iput p2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 160
    iget-object p1, p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->position:Lcom/badlogic/gdx/math/Vector2;

    double-to-float p2, p4

    iput p2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-void
.end method

.method public setRolloverColorAtIndex(ILjava/lang/Integer;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    iput-object p2, p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->color:Ljava/lang/Integer;

    return-void
.end method

.method public setRolloverRadiusAtIndex(IF)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rollovers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    iput p2, p1, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->radius:F

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 286
    iput-boolean p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->isVisible:Z

    return-void
.end method

.method public shouldCallTick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V
    .locals 8

    .line 184
    invoke-super {p0, p1, p2, p3}, Lcom/dozingcatsoftware/vectorpinball/elements/FieldElement;->tick(Lcom/dozingcatsoftware/vectorpinball/model/Field;J)V

    .line 185
    iget-boolean p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->ignoreBall:Z

    if-eqz p2, :cond_0

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result p2

    .line 188
    iget-object p3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allHitRollovers:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 189
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 193
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 194
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    .line 195
    iget-object v3, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitByBall:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->getRolloversHitByBall(Lcom/dozingcatsoftware/vectorpinball/model/Ball;Ljava/util/List;)V

    const/4 v3, 0x0

    .line 196
    :goto_1
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitByBall:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 197
    iget-object v4, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitByBall:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;

    .line 198
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allHitRollovers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allHitRollovers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 207
    :cond_2
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 208
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-wide v5, v4, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->score:J

    invoke-virtual {p1, v5, v6}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 210
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getAudioPlayer()Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    move-result-object v5

    invoke-interface {v5}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playRollover()V

    .line 212
    iget v5, v4, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->resetDelay:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 213
    iget v5, v4, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->resetDelay:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v5, v5, v6

    float-to-long v5, v5

    new-instance v7, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v4}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;)V

    invoke-virtual {p1, v5, v6, v7}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->scheduleAction(JLjava/lang/Runnable;)V

    :cond_3
    if-nez p2, :cond_5

    .line 216
    invoke-virtual {p0}, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allRolloversActive()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getDelegate()Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;

    move-result-object v4

    invoke-interface {v4, p1, p0, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field$Delegate;->allRolloversInGroupActivated(Lcom/dozingcatsoftware/vectorpinball/model/Field;Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;Lcom/dozingcatsoftware/vectorpinball/model/Ball;)V

    goto :goto_2

    .line 220
    :cond_4
    iget-boolean v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->canToggleOff:Z

    if-eqz v5, :cond_5

    .line 221
    iget-object v5, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->activeRollovers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    iget-wide v4, v4, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement$Rollover;->score:J

    invoke-virtual {p1, v4, v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->addScore(J)V

    .line 223
    invoke-virtual {p1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getAudioPlayer()Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/dozingcatsoftware/vectorpinball/model/AudioPlayer;->playRollover()V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 228
    :cond_7
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 229
    iget-object p1, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->rolloversHitOnPreviousTick:Ljava/util/List;

    iget-object p2, p0, Lcom/dozingcatsoftware/vectorpinball/elements/RolloverGroupElement;->allHitRollovers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
