.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    }
.end annotation


# instance fields
.field amountX:F

.field amountY:F

.field cancelTouchFocus:Z

.field private clamp:Z

.field disableX:Z

.field disableY:Z

.field draggingPointer:I

.field fadeAlpha:F

.field fadeAlphaSeconds:F

.field fadeDelay:F

.field fadeDelaySeconds:F

.field fadeScrollBars:Z

.field flickScroll:Z

.field private flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

.field flingTime:F

.field flingTimer:F

.field private forceScrollX:Z

.field private forceScrollY:Z

.field final hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field hScrollOnBottom:Z

.field final lastPoint:Lcom/badlogic/gdx/math/Vector2;

.field maxX:F

.field maxY:F

.field private overscrollDistance:F

.field private overscrollSpeedMax:F

.field private overscrollSpeedMin:F

.field private overscrollX:Z

.field private overscrollY:Z

.field scrollBarTouch:Z

.field scrollX:Z

.field scrollY:Z

.field private scrollbarsOnTop:Z

.field smoothScrolling:Z

.field private style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

.field touchScrollH:Z

.field touchScrollV:Z

.field final vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

.field final vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

.field vScrollOnRight:Z

.field private variableSizeKnobs:Z

.field velocityX:F

.field velocityY:F

.field visualAmountX:F

.field visualAmountY:F

.field private widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field final widgetArea:Lcom/badlogic/gdx/math/Rectangle;

.field private final widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 52
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    .line 53
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 54
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    .line 55
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    .line 64
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->lastPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 65
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->smoothScrolling:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollBarTouch:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 66
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    .line 67
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    .line 69
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    .line 70
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    .line 71
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    const/high16 v1, 0x42480000    # 50.0f

    .line 72
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    const/high16 v1, 0x41f00000    # 30.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    const/high16 v1, 0x43480000    # 200.0f

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    .line 75
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    .line 77
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    if-eqz p2, :cond_0

    .line 98
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 99
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 p1, 0x43160000    # 150.0f

    .line 100
    invoke-virtual {p0, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setSize(FF)V

    .line 102
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addCaptureListener()V

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getFlickScrollListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    .line 104
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 105
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addScrollListener()V

    return-void

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "style cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1

    .line 87
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1

    .line 92
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-virtual {p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method

.method private updateWidgetPosition()V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 507
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    :goto_1
    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 508
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 510
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    if-eqz v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v3, v0

    iput v3, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 512
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v2, v1

    iput v2, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 513
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 515
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetCullingArea:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Cullable;->setCullingArea(Lcom/badlogic/gdx/math/Rectangle;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 9

    .line 286
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->act(F)V

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    .line 291
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-eqz v4, :cond_1

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-nez v4, :cond_1

    .line 292
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    sub-float/2addr v4, p1

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_0

    sub-float/2addr v1, p1

    .line 293
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 297
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_7

    .line 298
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    .line 300
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    div-float/2addr v1, v4

    .line 301
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    mul-float v5, v5, v1

    mul-float v5, v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    .line 302
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    mul-float v5, v5, v1

    mul-float v5, v5, p1

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    .line 303
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp()V

    .line 306
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v5, v4

    cmpl-float v5, v1, v5

    if-nez v5, :cond_2

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 307
    :cond_2
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    add-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 308
    :cond_3
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    neg-float v5, v4

    cmpl-float v5, v1, v5

    if-nez v5, :cond_4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 309
    :cond_4
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    add-float/2addr v5, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_5

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    .line 311
    :cond_5
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_6

    .line 313
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 314
    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    :cond_6
    const/4 v1, 0x1

    .line 320
    :cond_7
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->smoothScrolling:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_d

    if-nez v0, :cond_d

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    const v5, 0x3dcccccd    # 0.1f

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v6, v7

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    :cond_8
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v6, v7

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v6, v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_d

    .line 325
    :cond_9
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    const/high16 v6, 0x40e00000    # 7.0f

    const/high16 v7, 0x43480000    # 200.0f

    cmpl-float v8, v4, v5

    if-eqz v8, :cond_b

    cmpg-float v1, v4, v5

    if-gez v1, :cond_a

    mul-float v1, p1, v7

    sub-float v8, v5, v4

    mul-float v8, v8, v6

    mul-float v8, v8, p1

    .line 327
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollX(F)V

    goto :goto_1

    :cond_a
    mul-float v1, p1, v7

    sub-float v8, v4, v5

    mul-float v8, v8, v6

    mul-float v8, v8, p1

    .line 329
    invoke-static {v1, v8}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollX(F)V

    :goto_1
    const/4 v1, 0x1

    .line 332
    :cond_b
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float v8, v4, v5

    if-eqz v8, :cond_f

    cmpg-float v1, v4, v5

    if-gez v1, :cond_c

    mul-float v7, v7, p1

    sub-float v1, v5, v4

    mul-float v1, v1, v6

    mul-float v1, v1, p1

    .line 334
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollY(F)V

    goto :goto_2

    :cond_c
    mul-float v7, v7, p1

    sub-float v1, v4, v5

    mul-float v1, v1, v6

    mul-float v1, v1, p1

    .line 336
    invoke-static {v7, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollY(F)V

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    .line 340
    :cond_d
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_e

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollX(F)V

    .line 341
    :cond_e
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_f

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualScrollY(F)V

    :cond_f
    :goto_3
    if-nez v0, :cond_14

    .line 345
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_12

    .line 346
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_11

    .line 347
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    .line 348
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    sub-float/2addr v4, v1

    neg-float v5, v0

    mul-float v4, v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_10

    .line 350
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    :cond_10
    :goto_4
    const/4 v1, 0x1

    goto :goto_5

    .line 352
    :cond_11
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_12

    .line 353
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    sub-float/2addr v4, v1

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    sub-float v6, v5, v0

    neg-float v6, v6

    mul-float v4, v4, v6

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    cmpg-float v0, v0, v5

    if-gez v0, :cond_10

    .line 356
    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    goto :goto_4

    .line 360
    :cond_12
    :goto_5
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_14

    .line 361
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpg-float v4, v0, v3

    if-gez v4, :cond_13

    .line 362
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    sub-float/2addr v4, v1

    neg-float v5, v0

    mul-float v4, v4, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpl-float p1, v0, v3

    if-lez p1, :cond_15

    .line 365
    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    goto :goto_6

    .line 367
    :cond_13
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    .line 368
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setScrollbarsVisible(Z)V

    .line 369
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float v5, v4, v0

    neg-float v5, v5

    mul-float v3, v3, v5

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    mul-float v1, v1, p1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    cmpg-float p1, v0, v4

    if-gez p1, :cond_15

    .line 371
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    goto :goto_6

    :cond_14
    move v2, v1

    :cond_15
    :goto_6
    if-eqz v2, :cond_16

    .line 378
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 379
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    :cond_16
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use ScrollPane#setWidget."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorAfter(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use ScrollPane#setWidget."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorAt(ILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 679
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use ScrollPane#setWidget."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addActorBefore(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use ScrollPane#setWidget."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected addCaptureListener()V
    .locals 1

    .line 109
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method protected addScrollListener()V
    .locals 1

    .line 220
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$3;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    .line 259
    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    .line 261
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    .line 262
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->cancel()V

    return-void
.end method

.method public cancelTouchFocus()V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0, v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    return-void
.end method

.method clamp()V
    .locals 5

    .line 266
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v3, v2

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    add-float/2addr v4, v2

    invoke-static {v0, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    .line 268
    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 267
    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 269
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    neg-float v2, v1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    add-float/2addr v3, v1

    invoke-static {v0, v2, v3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    .line 270
    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    .line 269
    :goto_1
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 9

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->validate()V

    .line 525
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->applyTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 527
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollPercentX()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 528
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getVisualScrollPercentY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 531
    :cond_2
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->updateWidgetPosition()V

    .line 534
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    .line 535
    iget v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v1, v1, p2

    .line 536
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    .line 537
    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 538
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v8

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 541
    :cond_3
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 542
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clipBegin(FFFF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 543
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawChildren(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 544
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->flush()V

    .line 545
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clipEnd()V

    .line 549
    :cond_4
    iget p2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-interface {p1, p2, v2, v3, v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 550
    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-eqz p2, :cond_5

    sget-object p2, Lcom/badlogic/gdx/math/Interpolation;->fade:Lcom/badlogic/gdx/math/Interpolation;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    div-float/2addr v2, v3

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result p2

    mul-float v1, v1, p2

    :cond_5
    move v7, v1

    .line 551
    iget v4, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v5, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawScrollBars(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 553
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 4

    .line 1068
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1069
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->computeTransform()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->applyTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;Lcom/badlogic/gdx/math/Matrix4;)V

    .line 1070
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clipBegin(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->drawDebugChildren(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 1072
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->flush()V

    .line 1073
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clipEnd()V

    .line 1075
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetTransform(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    return-void
.end method

.method protected drawScrollBars(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p5, v0

    if-gtz v1, :cond_0

    return-void

    .line 560
    :cond_0
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 562
    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 563
    :goto_0
    iget-boolean p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float p5, p5, v0

    if-lez p5, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 565
    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object p4, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->corner:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p4, :cond_3

    .line 566
    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->corner:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p4, p4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float v2, p4, p5

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, p4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_3
    if-eqz p2, :cond_5

    .line 571
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p2, :cond_4

    .line 572
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 573
    :cond_4
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p2, :cond_5

    .line 574
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_5
    if-eqz p3, :cond_7

    .line 577
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p2, :cond_6

    .line 578
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 579
    :cond_6
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz p2, :cond_7

    .line 580
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, p2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, p2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v4, p2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    :cond_7
    return-void
.end method

.method public fling(FFF)V
    .locals 0

    .line 589
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    .line 590
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    .line 591
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    return-void
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getFadeScrollBars()Z
    .locals 1

    .line 1031
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    return v0
.end method

.method protected getFlickScrollListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
    .locals 1

    .line 186
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    return-object v0
.end method

.method public getMaxX()F
    .locals 1

    .line 862
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    return v0
.end method

.method public getMaxY()F
    .locals 1

    .line 867
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getMouseWheelX()F
    .locals 4

    .line 747
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method protected getMouseWheelY()F
    .locals 4

    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    const v2, 0x3f666666    # 0.9f

    mul-float v1, v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getOverscrollDistance()F
    .locals 1

    .line 983
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 4

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 617
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 621
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    .line 623
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 625
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v1, :cond_5

    .line 627
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v2

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    add-float/2addr v0, v2

    :cond_5
    return v0
.end method

.method public getPrefWidth()F
    .locals 4

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 597
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 599
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_2

    .line 603
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v3

    add-float/2addr v0, v3

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 605
    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v1, :cond_5

    .line 607
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v2

    .line 608
    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    add-float/2addr v0, v2

    :cond_5
    return v0
.end method

.method public getScrollBarHeight()F
    .locals 2

    .line 871
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    return v1
.end method

.method public getScrollBarWidth()F
    .locals 2

    .line 879
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_2
    return v1
.end method

.method public getScrollHeight()F
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    return v0
.end method

.method public getScrollPercentX()F
    .locals 3

    .line 799
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 800
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollPercentY()F
    .locals 3

    .line 808
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 809
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getScrollWidth()F
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    return v0
.end method

.method public getScrollX()F
    .locals 1

    .line 761
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    return v0
.end method

.method public getScrollY()F
    .locals 1

    .line 770
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    return v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    return-object v0
.end method

.method public getVariableSizeKnobs()Z
    .locals 1

    .line 1052
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    return v0
.end method

.method public getVelocityX()F
    .locals 1

    .line 955
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .line 964
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    return v0
.end method

.method public getVisualScrollPercentX()F
    .locals 3

    .line 789
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 790
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getVisualScrollPercentY()F
    .locals 3

    .line 794
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    return v1

    .line 795
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public getVisualScrollX()F
    .locals 1

    .line 781
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    :goto_0
    return v0
.end method

.method public getVisualScrollY()F
    .locals 1

    .line 785
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    :goto_0
    return v0
.end method

.method public getWidget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 665
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_3

    .line 717
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v1

    cmpl-float v1, p1, v1

    if-gez v1, :cond_3

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 718
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollH:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 720
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->touchScrollV:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Rectangle;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    .line 722
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isBottomEdge()Z
    .locals 2

    .line 934
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDragging()Z
    .locals 2

    .line 938
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->draggingPointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFlinging()Z
    .locals 2

    .line 946
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isForceScrollX()Z
    .locals 1

    .line 994
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    return v0
.end method

.method public isForceScrollY()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    return v0
.end method

.method public isLeftEdge()Z
    .locals 2

    .line 922
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isPanning()Z
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/input/GestureDetector;->isPanning()Z

    move-result v0

    return v0
.end method

.method public isRightEdge()Z
    .locals 2

    .line 926
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isScrollX()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    return v0
.end method

.method public isScrollY()Z
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    return v0
.end method

.method public isScrollingDisabledX()Z
    .locals 1

    .line 914
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    return v0
.end method

.method public isScrollingDisabledY()Z
    .locals 1

    .line 918
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    return v0
.end method

.method public isTopEdge()Z
    .locals 2

    .line 930
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public layout()V
    .locals 15

    .line 384
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScrollKnob:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getLeftWidth()F

    move-result v4

    .line 388
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getRightWidth()F

    move-result v5

    .line 389
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getTopHeight()F

    move-result v6

    .line 390
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getBottomHeight()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 392
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getWidth()F

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getHeight()F

    move-result v8

    .line 393
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    sub-float v10, v7, v4

    sub-float/2addr v10, v5

    sub-float/2addr v8, v6

    sub-float v6, v8, v0

    invoke-virtual {v9, v4, v0, v10, v6}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 395
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v6, :cond_1

    return-void

    :cond_1
    if-eqz v1, :cond_2

    .line 398
    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 399
    :goto_1
    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v9, v9, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->hScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_3
    if-eqz v2, :cond_4

    .line 400
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 401
    :goto_2
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    iget-object v10, v10, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;->vScroll:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 405
    :cond_5
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v11, v10, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v11, :cond_6

    .line 406
    check-cast v10, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 407
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v11

    .line 408
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v10

    goto :goto_3

    .line 410
    :cond_6
    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v11

    .line 411
    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v10

    .line 415
    :goto_3
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez v12, :cond_8

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_7

    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    if-nez v12, :cond_7

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v12, 0x1

    :goto_5
    iput-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    .line 416
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v12, v10, v12

    if-lez v12, :cond_a

    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    if-nez v12, :cond_a

    :cond_9
    const/4 v13, 0x1

    :cond_a
    iput-boolean v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    .line 419
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    if-nez v12, :cond_e

    if-eqz v13, :cond_c

    .line 421
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v13, v9

    iput v13, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 422
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v13, v9

    iput v13, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 424
    :cond_b
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_c

    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    if-nez v12, :cond_c

    iput-boolean v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    .line 426
    :cond_c
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v12, :cond_e

    .line 427
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v13, v6

    iput v13, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 428
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v13, v6

    iput v13, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 430
    :cond_d
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v12, v10, v12

    if-lez v12, :cond_e

    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    if-nez v12, :cond_e

    .line 431
    iput-boolean v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    .line 432
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v13, v9

    iput v13, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 433
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v13, v9

    iput v13, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 439
    :cond_e
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    if-eqz v12, :cond_f

    iget-object v11, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v11, Lcom/badlogic/gdx/math/Rectangle;->width:F

    goto :goto_6

    :cond_f
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v12, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 440
    :goto_6
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    if-eqz v12, :cond_10

    iget-object v10, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_7

    :cond_10
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 442
    :goto_7
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float v12, v11, v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    .line 443
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float v12, v10, v12

    iput v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    .line 444
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    invoke-static {v12, v3, v13}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v12

    invoke-virtual {p0, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 445
    iget v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {v12, v3, v13}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v12

    invoke-virtual {p0, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    .line 448
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v12, :cond_17

    if-eqz v1, :cond_16

    .line 450
    iget-boolean v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    if-eqz v12, :cond_11

    move v12, v4

    goto :goto_8

    :cond_11
    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 451
    :goto_8
    iget-boolean v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    if-eqz v13, :cond_12

    move v8, v0

    goto :goto_9

    :cond_12
    sub-float/2addr v8, v6

    .line 452
    :goto_9
    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-virtual {v13, v12, v8, v14, v6}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 453
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v8, :cond_13

    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    if-eqz v8, :cond_13

    .line 454
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v12, v9

    iput v12, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 455
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    add-float/2addr v12, v9

    iput v12, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 458
    :cond_13
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    if-eqz v8, :cond_14

    .line 459
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v12

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v14, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    mul-float v13, v13, v14

    div-float/2addr v13, v11

    float-to-int v13, v13

    int-to-float v13, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v12

    iput v12, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    goto :goto_a

    .line 462
    :cond_14
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v12

    iput v12, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 463
    :goto_a
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_15

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 464
    :cond_15
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    iput v1, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 465
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget-object v13, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v13, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v12, v13

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentX()F

    move-result v13

    mul-float v12, v12, v13

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v8, v12

    iput v8, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 466
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iput v8, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_b

    .line 468
    :cond_16
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 469
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 472
    :cond_17
    :goto_b
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY:Z

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1e

    .line 474
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    if-eqz v1, :cond_18

    sub-float v1, v7, v5

    sub-float/2addr v1, v9

    goto :goto_c

    :cond_18
    move v1, v4

    .line 475
    :goto_c
    iget-boolean v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    if-eqz v8, :cond_19

    goto :goto_d

    :cond_19
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 476
    :goto_d
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v12, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v8, v1, v0, v9, v12}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 477
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    if-eqz v0, :cond_1a

    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v1, v6

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 479
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v1, v6

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 482
    :cond_1a
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 483
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    if-eqz v0, :cond_1b

    .line 484
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    mul-float v6, v6, v8

    div-float/2addr v6, v10

    float-to-int v6, v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_e

    .line 487
    :cond_1b
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v1

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 488
    :goto_e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v0, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpl-float v0, v0, v10

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iput v3, v0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 489
    :cond_1c
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    if-eqz v1, :cond_1d

    sub-float/2addr v7, v5

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    sub-float v4, v7, v1

    :cond_1d
    iput v4, v0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 490
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v1, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v2, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    iget v3, v3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getScrollPercentY()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    goto :goto_f

    .line 492
    :cond_1e
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vKnobBounds:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 497
    :cond_1f
    :goto_f
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->updateWidgetPosition()V

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_20

    .line 499
    invoke-virtual {v0, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    :cond_20
    return-void
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 699
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, 0x1

    return p1

    .line 697
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "actor cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 706
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 707
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result p1

    return p1

    .line 704
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "actor cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 0

    .line 711
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActorAt(IZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    .line 712
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne p1, p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    :cond_0
    return-object p1
.end method

.method public scrollTo(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 833
    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollTo(FFFFZZ)V

    return-void
.end method

.method public scrollTo(FFFFZZ)V
    .locals 2

    .line 839
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->validate()V

    .line 841
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p5, :cond_0

    .line 843
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float/2addr p5, v1

    sub-float/2addr p1, p5

    div-float/2addr p3, v1

    add-float/2addr p1, p3

    goto :goto_0

    :cond_0
    add-float/2addr p3, p1

    .line 845
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr p5, v0

    cmpl-float p5, p3, p5

    if-lez p5, :cond_1

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget p5, p5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float v0, p3, p5

    :cond_1
    cmpg-float p3, p1, v0

    if-gez p3, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    .line 848
    :goto_0
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 p5, 0x0

    invoke-static {p1, p5, p3}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    .line 850
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    if-eqz p6, :cond_3

    .line 852
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget p2, p2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr p2, v1

    add-float/2addr p1, p2

    div-float/2addr p4, v1

    sub-float/2addr p1, p4

    goto :goto_1

    .line 854
    :cond_3
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr p3, p2

    sub-float/2addr p3, p4

    iget-object p6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget p6, p6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p3, p6

    cmpl-float p3, p1, p3

    if-lez p3, :cond_4

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float/2addr p1, p2

    sub-float/2addr p1, p4

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widgetArea:Lcom/badlogic/gdx/math/Rectangle;

    iget p3, p3, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr p1, p3

    .line 855
    :cond_4
    iget p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    sub-float p4, p3, p2

    cmpg-float p4, p1, p4

    if-gez p4, :cond_5

    sub-float p1, p3, p2

    .line 857
    :cond_5
    :goto_1
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    invoke-static {p1, p5, p2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    return-void
.end method

.method protected scrollX(F)V
    .locals 0

    .line 727
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    return-void
.end method

.method protected scrollY(F)V
    .locals 0

    .line 732
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v0, p0, :cond_2

    if-eqz v0, :cond_0

    .line 646
    invoke-super {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 647
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->widget:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_1

    .line 648
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    return-void

    .line 645
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "widget cannot be the ScrollPane."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCancelTouchFocus(Z)V
    .locals 0

    .line 1064
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocus:Z

    return-void
.end method

.method public setClamp(Z)V
    .locals 0

    .line 1008
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp:Z

    return-void
.end method

.method public setFadeScrollBars(Z)V
    .locals 1

    .line 1019
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1020
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeScrollBars:Z

    if-nez p1, :cond_1

    .line 1021
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 1022
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    return-void
.end method

.method public setFlickScroll(Z)V
    .locals 1

    .line 817
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 818
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScroll:Z

    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_0

    .line 822
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 823
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    return-void
.end method

.method public setFlickScrollTapSquareSize(F)V
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flickScrollListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->getGestureDetector()Lcom/badlogic/gdx/input/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/input/GestureDetector;->setTapSquareSize(F)V

    return-void
.end method

.method public setFlingTime(F)V
    .locals 0

    .line 1003
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    return-void
.end method

.method public setForceScroll(ZZ)V
    .locals 0

    .line 989
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollX:Z

    .line 990
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->forceScrollY:Z

    return-void
.end method

.method public setOverscroll(ZZ)V
    .locals 0

    .line 970
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollX:Z

    .line 971
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollY:Z

    return-void
.end method

.method public setScrollBarPositions(ZZ)V
    .locals 0

    .line 1013
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->hScrollOnBottom:Z

    .line 1014
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->vScrollOnRight:Z

    return-void
.end method

.method public setScrollBarTouch(Z)V
    .locals 0

    .line 1036
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollBarTouch:Z

    return-void
.end method

.method public setScrollPercentX(F)V
    .locals 3

    .line 804
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    return-void
.end method

.method public setScrollPercentY(F)V
    .locals 3

    .line 813
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    mul-float v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    return-void
.end method

.method public setScrollX(F)V
    .locals 2

    .line 756
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxX:F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollX(F)V

    return-void
.end method

.method public setScrollY(F)V
    .locals 2

    .line 765
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->maxY:F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollY(F)V

    return-void
.end method

.method public setScrollbarsOnTop(Z)V
    .locals 0

    .line 1047
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->scrollbarsOnTop:Z

    .line 1048
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    return-void
.end method

.method public setScrollbarsVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 241
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 242
    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 244
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlpha:F

    .line 245
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelay:F

    :goto_0
    return-void
.end method

.method public setScrollingDisabled(ZZ)V
    .locals 0

    .line 908
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableX:Z

    .line 909
    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->disableY:Z

    .line 910
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidate()V

    return-void
.end method

.method public setSmoothScrolling(Z)V
    .locals 0

    .line 1040
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->smoothScrolling:Z

    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 275
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    .line 276
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->invalidateHierarchy()V

    return-void

    .line 274
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "style cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVariableSizeKnobs(Z)V
    .locals 0

    .line 1058
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->variableSizeKnobs:Z

    return-void
.end method

.method public setVelocityX(F)V
    .locals 0

    .line 950
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    return-void
.end method

.method public setVelocityY(F)V
    .locals 0

    .line 959
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    return-void
.end method

.method public setWidget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 659
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public setupFadeScrollBars(FF)V
    .locals 0

    .line 1026
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeAlphaSeconds:F

    .line 1027
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->fadeDelaySeconds:F

    return-void
.end method

.method public setupOverscroll(FFF)V
    .locals 0

    .line 977
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollDistance:F

    .line 978
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMin:F

    .line 979
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->overscrollSpeedMax:F

    return-void
.end method

.method public updateVisualScroll()V
    .locals 1

    .line 776
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    .line 777
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    return-void
.end method

.method protected visualScrollX(F)V
    .locals 0

    .line 737
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountX:F

    return-void
.end method

.method protected visualScrollY(F)V
    .locals 0

    .line 742
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->visualAmountY:F

    return-void
.end method
