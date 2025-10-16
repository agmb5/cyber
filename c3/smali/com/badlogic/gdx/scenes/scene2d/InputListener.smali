.class public Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# static fields
.field private static final tmpCoords:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 9

    .line 48
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 51
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    .line 60
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->toCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 62
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    return v1

    .line 84
    :pswitch_0
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return v1

    .line 81
    :pswitch_1
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return v1

    .line 79
    :pswitch_2
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getScrollAmountX()F

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getScrollAmountY()F

    move-result v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)Z

    move-result p1

    return p1

    .line 77
    :pswitch_3
    iget v0, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move-result p1

    return p1

    .line 74
    :pswitch_4
    iget v0, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    return v8

    .line 71
    :pswitch_5
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return v8

    .line 64
    :pswitch_6
    iget v4, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTouchFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    .line 67
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v3, p0

    .line 66
    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V

    :cond_1
    return v0

    .line 57
    :cond_2
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getCharacter()C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result p1

    return p1

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result p1

    return p1

    .line 53
    :cond_4
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    return-void
.end method
