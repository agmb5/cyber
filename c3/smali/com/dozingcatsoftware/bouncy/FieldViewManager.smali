.class public Lcom/dozingcatsoftware/bouncy/FieldViewManager;
.super Ljava/lang/Object;
.source "FieldViewManager.java"


# static fields
.field static ALL_FLIPPER_KEYS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final END_BALL_DELAY_MS:J = 0x2eeL

.field static LEFT_FLIPPER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static RIGHT_FLIPPER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field MOTIONEVENT_ACTION_MASK:I

.field MOTIONEVENT_ACTION_POINTER_INDEX_MASK:I

.field MOTIONEVENT_ACTION_POINTER_INDEX_SHIFT:I

.field MOTIONEVENT_ACTION_POINTER_UP:I

.field private cachedHeight:F

.field private cachedScale:F

.field private cachedXOffset:F

.field private cachedYOffset:F

.field customLineWidth:I

.field field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

.field fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

.field getPointerCountMethod:Ljava/lang/reflect/Method;

.field getXMethod:Ljava/lang/reflect/Method;

.field private final handler:Landroid/os/Handler;

.field hasMultitouch:Z

.field independentFlippers:Z

.field private leftFlipperActivationMillis:Ljava/lang/Long;

.field maxZoom:F

.field private final minFlipperActivationMillis:J

.field private rightFlipperActivationMillis:Ljava/lang/Long;

.field startGameAction:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x36

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 334
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->LEFT_FLIPPER_KEYS:Ljava/util/List;

    new-array v1, v0, [Ljava/lang/Integer;

    const/16 v2, 0x4c

    .line 337
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 336
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->RIGHT_FLIPPER_KEYS:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/16 v2, 0x3e

    .line 339
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 338
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->ALL_FLIPPER_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->maxZoom:F

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->customLineWidth:I

    const/4 v1, -0x1

    .line 151
    iput v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_MASK:I

    const/4 v1, 0x0

    .line 158
    :try_start_0
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getPointerCountMethod:Ljava/lang/reflect/Method;

    .line 159
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getXMethod:Ljava/lang/reflect/Method;

    .line 160
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_MASK"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_MASK:I

    .line 161
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_UP"

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_UP:I

    .line 163
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_MASK"

    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_MASK:I

    .line 165
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "ACTION_POINTER_INDEX_SHIFT"

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_SHIFT:I

    .line 167
    iput-boolean v4, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->hasMultitouch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    iput-boolean v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->hasMultitouch:Z

    .line 256
    :goto_0
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    .line 257
    iput-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    const-wide/16 v0, 0x32

    .line 258
    iput-wide v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->minFlipperActivationMillis:J

    .line 259
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private cacheScaleAndOffsets()V
    .locals 6

    .line 98
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v0}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedHeight:F

    .line 99
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomRatio()F

    move-result v0

    mul-float v1, v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v0, v2

    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v3, v0

    mul-float v1, v1, v3

    .line 103
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->maxZoom:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    mul-float v0, v0, v1

    add-float/2addr v0, v3

    .line 104
    invoke-virtual {p0, v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getScale(F)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedScale:F

    .line 106
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->zoomCenterPoint()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedScale:F

    div-float/2addr v1, v3

    .line 112
    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getWidth()F

    move-result v3

    sub-float/2addr v1, v3

    neg-float v1, v1

    div-float/2addr v1, v2

    iput v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedXOffset:F

    goto :goto_0

    .line 116
    :cond_0
    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    div-float v5, v1, v2

    sub-float/2addr v3, v5

    .line 117
    iget-object v5, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v5}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getWidth()F

    move-result v5

    sub-float/2addr v5, v1

    .line 118
    invoke-static {v3, v4, v5}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedXOffset:F

    .line 121
    :goto_0
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedScale:F

    div-float/2addr v1, v3

    .line 122
    iget-object v3, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v3}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getHeight()F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getHeight()F

    move-result v0

    sub-float/2addr v1, v0

    neg-float v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedYOffset:F

    goto :goto_1

    .line 126
    :cond_1
    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v2, v1, v2

    sub-float/2addr v0, v2

    .line 127
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getHeight()F

    move-result v2

    sub-float/2addr v2, v1

    .line 128
    invoke-static {v0, v4, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedYOffset:F

    :goto_1
    return-void
.end method

.method private currentTimeMillis()J
    .locals 2

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private updateFlippersForKeyCode(IZ)Z
    .locals 3

    .line 371
    sget-object v0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->LEFT_FLIPPER_KEYS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 372
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setLeftFlippersEngaged(Z)V

    return v1

    .line 375
    :cond_0
    sget-object v0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->RIGHT_FLIPPER_KEYS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setRightFlippersEngaged(Z)V

    return v1

    .line 379
    :cond_1
    sget-object v0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->ALL_FLIPPER_KEYS:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 380
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setAllFlippersEngaged(Z)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private updateFlippersFromTouchEvent(ZZ)V
    .locals 10

    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    :cond_0
    if-eqz p2, :cond_1

    .line 269
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 276
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setAllFlippersEngaged(Z)V

    goto/16 :goto_5

    :cond_2
    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 280
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setLeftFlippersEngaged(Z)V

    goto :goto_2

    .line 283
    :cond_3
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    if-eqz p1, :cond_4

    .line 284
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->currentTimeMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_6

    .line 286
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-ltz v7, :cond_5

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v5, v2, v5

    .line 293
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 294
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handler:Landroid/os/Handler;

    new-instance v9, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0, v7, v8}, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/dozingcatsoftware/bouncy/FieldViewManager;J)V

    invoke-virtual {p1, v9, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 287
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setLeftFlippersEngaged(Z)V

    .line 288
    iput-object v4, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    :goto_2
    if-eqz p2, :cond_7

    .line 307
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setRightFlippersEngaged(Z)V

    goto :goto_5

    .line 310
    :cond_7
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    if-eqz p1, :cond_8

    .line 311
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_3

    :cond_8
    move-object p1, v4

    :goto_3
    if-eqz p1, :cond_a

    .line 313
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p2, v5, v2

    if-ltz p2, :cond_9

    goto :goto_4

    .line 318
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v2, p1

    .line 320
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 321
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/dozingcatsoftware/bouncy/FieldViewManager$$ExternalSyntheticLambda1;-><init>(Lcom/dozingcatsoftware/bouncy/FieldViewManager;J)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 314
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {p1, v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setRightFlippersEngaged(Z)V

    .line 315
    iput-object v4, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    :goto_5
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cacheScaleAndOffsets()V

    .line 388
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v0}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->doDraw()V

    return-void
.end method

.method getCachedScale()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedScale:F

    return v0
.end method

.method public getCustomLineWidth()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->customLineWidth:I

    return v0
.end method

.method public getField()Lcom/dozingcatsoftware/vectorpinball/model/Field;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    return-object v0
.end method

.method public getLineWidth()I
    .locals 3

    .line 67
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->customLineWidth:I

    .line 68
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v2}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v0, :cond_0

    .line 70
    div-int/lit8 v1, v1, 0x3c

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    div-int/lit16 v0, v1, 0xd8

    :goto_0
    const/4 v1, 0x1

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getScale(F)F
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v0}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 80
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v1}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getHeight()F

    move-result v2

    div-float/2addr v1, v2

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float v0, v0, p1

    return v0
.end method

.method public handleKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 343
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_3

    .line 344
    iget-object p2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter p2

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 349
    invoke-direct {p0, p1, v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->updateFlippersForKeyCode(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->launchBallIfNeeded()V

    .line 351
    :cond_1
    monitor-exit p2

    return p1

    .line 347
    :cond_2
    :goto_0
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p1

    .line 352
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return v1
.end method

.method public handleKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 359
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 360
    iget-object p2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter p2

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->updateFlippersForKeyCode(IZ)Z

    move-result p1

    monitor-exit p2

    return p1

    .line 362
    :cond_1
    :goto_0
    monitor-exit p2

    return v0

    :catchall_0
    move-exception p1

    .line 365
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_MASK:I

    and-int/2addr v0, v1

    .line 191
    iget-object v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isGameInProgress()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getGameState()Lcom/dozingcatsoftware/vectorpinball/model/GameState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dozingcatsoftware/vectorpinball/model/GameState;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->startGameAction:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 194
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 195
    monitor-exit v1

    return v3

    .line 200
    :cond_1
    iget-boolean v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->independentFlippers:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->hasMultitouch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_7

    if-eq v0, v3, :cond_6

    .line 205
    :try_start_1
    iget-object v2, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getPointerCountMethod:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, -0x1

    .line 209
    iget v6, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_UP:I

    if-ne v0, v6, :cond_2

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    iget v6, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_MASK:I

    and-int/2addr v5, v6

    iget v6, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->MOTIONEVENT_ACTION_POINTER_INDEX_SHIFT:I

    shr-int/2addr v5, v6

    .line 214
    :cond_2
    iget-object v6, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    invoke-interface {v6}, Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;->getWidth()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v2, :cond_4

    if-eq v7, v5, :cond_5

    .line 217
    :try_start_2
    iget-object v10, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->getXMethod:Ljava/lang/reflect/Method;

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v10, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmpg-float v10, v10, v6

    if-gez v10, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x1

    goto :goto_1

    :catch_0
    :cond_4
    move v4, v8

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_1
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 228
    :cond_7
    :try_start_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v3, :cond_8

    const/4 v4, 0x1

    :cond_8
    move v9, v4

    :goto_2
    if-nez v0, :cond_9

    .line 231
    invoke-virtual {p0}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->launchBallIfNeeded()V

    .line 233
    :cond_9
    invoke-direct {p0, v4, v9}, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->updateFlippersFromTouchEvent(ZZ)V

    .line 234
    monitor-exit v1

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method synthetic lambda$updateFlippersFromTouchEvent$0$com-dozingcatsoftware-bouncy-FieldViewManager(J)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 299
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setLeftFlippersEngaged(Z)V

    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->leftFlipperActivationMillis:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method synthetic lambda$updateFlippersFromTouchEvent$1$com-dozingcatsoftware-bouncy-FieldViewManager(J)V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 325
    iget-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->setRightFlippersEngaged(Z)V

    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->rightFlipperActivationMillis:Ljava/lang/Long;

    :cond_0
    return-void
.end method

.method launchBallIfNeeded()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->ballLostWithinMillis(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->removeDeadBalls()V

    .line 182
    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->getBalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    invoke-virtual {v0}, Lcom/dozingcatsoftware/vectorpinball/model/Field;->launchBall()Lcom/dozingcatsoftware/vectorpinball/model/Ball;

    :cond_1
    return-void
.end method

.method public setCustomLineWidth(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->customLineWidth:I

    return-void
.end method

.method public setField(Lcom/dozingcatsoftware/vectorpinball/model/Field;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->field:Lcom/dozingcatsoftware/vectorpinball/model/Field;

    return-void
.end method

.method public setFieldRenderer(Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->fieldRenderer:Lcom/dozingcatsoftware/vectorpinball/model/IFieldRenderer;

    return-void
.end method

.method public setIndependentFlippers(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->independentFlippers:Z

    return-void
.end method

.method public setStartGameAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->startGameAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->maxZoom:F

    return-void
.end method

.method public world2pixelX(F)F
    .locals 1

    .line 136
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedXOffset:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedScale:F

    mul-float p1, p1, v0

    return p1
.end method

.method public world2pixelY(F)F
    .locals 2

    .line 144
    iget v0, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedHeight:F

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedYOffset:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/dozingcatsoftware/bouncy/FieldViewManager;->cachedScale:F

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    return v0
.end method
