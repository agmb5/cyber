.class public Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;
.super Ljava/lang/Object;
.source "Actions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/badlogic/gdx/utils/Pools;->get(Ljava/lang/Class;)Lcom/badlogic/gdx/utils/Pool;

    move-result-object p0

    .line 35
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 36
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setPool(Lcom/badlogic/gdx/utils/Pool;)V

    return-object v0
.end method

.method public static addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    .locals 1

    .line 41
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    .line 42
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;
    .locals 1

    .line 47
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;

    .line 48
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    .locals 1

    .line 469
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    .line 470
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 471
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setCapture(Z)V

    return-object v0
.end method

.method public static addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;ZLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;
    .locals 1

    .line 476
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;

    .line 477
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 478
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 479
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AddListenerAction;->setCapture(Z)V

    return-object v0
.end method

.method public static after(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;
    .locals 1

    .line 463
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;

    .line 464
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AfterAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 239
    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p0

    return-object p0
.end method

.method public static alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p0

    return-object p0
.end method

.method public static alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 1

    .line 249
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    .line 250
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 251
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 252
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p0

    return-object p0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object p0

    return-object p0
.end method

.method public static color(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;
    .locals 1

    .line 230
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    .line 231
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setEndColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setDuration(F)V

    .line 233
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    .locals 1

    .line 315
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    .line 316
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    return-object v0
.end method

.method public static delay(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;
    .locals 1

    .line 321
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    .line 322
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    .line 323
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 272
    invoke-static {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p0

    return-object p0
.end method

.method public static fadeIn(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2

    .line 277
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 278
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 279
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 280
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 258
    invoke-static {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object p0

    return-object p0
.end method

.method public static fadeOut(FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;
    .locals 2

    .line 263
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setAlpha(F)V

    .line 265
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setDuration(F)V

    .line 266
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    .locals 2

    .line 444
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    const/4 v1, -0x1

    .line 445
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setCount(I)V

    .line 446
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .locals 1

    const/4 v0, 0x0

    .line 289
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    return-object v0
.end method

.method public static layout(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;
    .locals 1

    .line 457
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;

    .line 458
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/LayoutAction;->setLayoutEnabled(Z)V

    return-object v0
.end method

.method public static moveBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object p0

    return-object p0
.end method

.method public static moveBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object p0

    return-object p0
.end method

.method public static moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;
    .locals 1

    .line 109
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    .line 110
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setAmount(FF)V

    .line 111
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setDuration(F)V

    .line 112
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p0

    return-object p0
.end method

.method public static moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p0

    return-object p0
.end method

.method public static moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 1

    .line 76
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    .line 77
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setPosition(FF)V

    .line 78
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setDuration(F)V

    .line 79
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static moveToAligned(FFI)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {p0, p1, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p0

    return-object p0
.end method

.method public static moveToAligned(FFIF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p0

    return-object p0
.end method

.method public static moveToAligned(FFIFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;
    .locals 1

    .line 92
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    .line 93
    invoke-virtual {v0, p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setPosition(FFI)V

    .line 94
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setDuration(F)V

    .line 95
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static parallel()Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .line 433
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .line 386
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 387
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .line 392
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 393
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 394
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .line 399
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 400
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 401
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 402
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .line 407
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 408
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 409
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 410
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 411
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 1

    .line 416
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 417
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 418
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 419
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 420
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 421
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static varargs parallel([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;
    .locals 4

    .line 426
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    .line 427
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 428
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    .locals 1

    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    .line 55
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;
    .locals 1

    .line 60
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;

    .line 61
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 62
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    .locals 1

    .line 305
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    return-object v0
.end method

.method public static removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
    .locals 1

    .line 309
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    .line 310
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object v0
.end method

.method public static removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Z)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    .locals 1

    .line 484
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    .line 485
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setCapture(Z)V

    return-object v0
.end method

.method public static removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;ZLcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;
    .locals 1

    .line 491
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;

    .line 492
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 493
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)V

    .line 494
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveListenerAction;->setCapture(Z)V

    return-object v0
.end method

.method public static repeat(ILcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;
    .locals 1

    .line 437
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    .line 438
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setCount(I)V

    .line 439
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static rotateBy(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object p0

    return-object p0
.end method

.method public static rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object p0

    return-object p0
.end method

.method public static rotateBy(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;
    .locals 1

    .line 211
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    .line 212
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setAmount(F)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setDuration(F)V

    .line 214
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static rotateTo(F)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object p0

    return-object p0
.end method

.method public static rotateTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .locals 1

    const/4 v0, 0x0

    .line 190
    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object p0

    return-object p0
.end method

.method public static rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;
    .locals 1

    .line 194
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    .line 195
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setRotation(F)V

    .line 196
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setDuration(F)V

    .line 197
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;
    .locals 1

    .line 451
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    .line 452
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;->setRunnable(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static scaleBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p0

    return-object p0
.end method

.method public static scaleBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .locals 1

    const/4 v0, 0x0

    .line 173
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p0

    return-object p0
.end method

.method public static scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
    .locals 1

    .line 177
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    .line 178
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setAmount(FF)V

    .line 179
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setDuration(F)V

    .line 180
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object p0

    return-object p0
.end method

.method public static scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object p0

    return-object p0
.end method

.method public static scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;
    .locals 1

    .line 160
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    .line 161
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setScale(FF)V

    .line 162
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setDuration(F)V

    .line 163
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static sequence()Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 382
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 335
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 336
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 341
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 342
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 343
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 348
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 349
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 350
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 351
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 356
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 357
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 358
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 359
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 360
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 1

    .line 365
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 366
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 368
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 369
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 370
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static varargs sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;
    .locals 4

    .line 375
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    .line 376
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 377
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .locals 1

    const/4 v0, 0x1

    .line 285
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v0

    return-object v0
.end method

.method public static sizeBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    move-result-object p0

    return-object p0
.end method

.method public static sizeBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    move-result-object p0

    return-object p0
.end method

.method public static sizeBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;
    .locals 1

    .line 143
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;

    .line 144
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setAmount(FF)V

    .line 145
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setDuration(F)V

    .line 146
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeByAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static sizeTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-static {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object p0

    return-object p0
.end method

.method public static sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object p0

    return-object p0
.end method

.method public static sizeTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
    .locals 1

    .line 126
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    .line 127
    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setSize(FF)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setDuration(F)V

    .line 129
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->setInterpolation(Lcom/badlogic/gdx/math/Interpolation;)V

    return-object v0
.end method

.method public static targeting(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/Action;
    .locals 0

    .line 505
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-object p1
.end method

.method public static timeScale(FLcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
    .locals 1

    .line 328
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;

    .line 329
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->setScale(F)V

    .line 330
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->setAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-object v0
.end method

.method public static touchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;
    .locals 1

    .line 299
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;

    .line 300
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TouchableAction;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    return-object v0
.end method

.method public static visible(Z)Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
    .locals 1

    .line 293
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->action(Ljava/lang/Class;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    .line 294
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->setVisible(Z)V

    return-object v0
.end method
