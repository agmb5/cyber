.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "Stage.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    }
.end annotation


# static fields
.field static debug:Z


# instance fields
.field private actionsRequestRendering:Z

.field private final batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field private debugAll:Z

.field private final debugColor:Lcom/badlogic/gdx/graphics/Color;

.field private debugInvisible:Z

.field private debugParentUnderMouse:Z

.field private debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field private debugUnderMouse:Z

.field private keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseScreenX:I

.field private mouseScreenY:I

.field private ownsBatch:Z

.field private final pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final pointerScreenX:[I

.field private final pointerScreenY:[I

.field private final pointerTouched:[Z

.field private root:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final tempCoords:Lcom/badlogic/gdx/math/Vector2;

.field final touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray<",
            "Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;",
            ">;"
        }
    .end annotation
.end field

.field private viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 93
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 5

    .line 108
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 74
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    const/16 v0, 0x14

    new-array v1, v0, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    new-array v1, v0, [Z

    .line 76
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    new-array v1, v0, [I

    .line 77
    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    new-array v0, v0, [I

    .line 78
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    const/4 v2, 0x1

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 83
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 87
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 88
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v3, v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 111
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 112
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 114
    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 115
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 117
    sget-object p2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {p2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result p2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0, v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "batch cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "viewport cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 177
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 178
    instance-of v1, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_1

    .line 179
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 180
    iget v1, p1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 181
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {p0, v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawDebug()V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 138
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setAutoShapeType(Z)V

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_4

    .line 142
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 146
    :cond_3
    iget-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 148
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v2, v3, :cond_5

    .line 149
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 152
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v1, :cond_6

    goto :goto_2

    .line 153
    :cond_6
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_1

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    return-void

    .line 156
    :cond_8
    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    .line 159
    :goto_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v1, :cond_9

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 161
    :cond_9
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 166
    :cond_a
    :goto_4
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin()V

    .line 169
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 170
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 171
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    return-void
.end method

.method private fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 232
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    if-ne p2, p1, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 237
    const-class p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 238
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 241
    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 242
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 243
    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 244
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 245
    invoke-static {p3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 249
    const-class p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 250
    invoke-virtual {p3, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 251
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 253
    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 254
    sget-object p4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 255
    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 256
    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 257
    invoke-static {p3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method


# virtual methods
.method public act()V
    .locals 2

    .line 187
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3d088889

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    return-void
.end method

.method public act(F)V
    .locals 6

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 196
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v3, v2, v1

    .line 198
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    aget-boolean v4, v4, v1

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    .line 200
    aput-object v4, v2, v1

    .line 201
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v4, v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v5, v5, v1

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 203
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 204
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 205
    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 206
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 207
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 208
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 209
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 210
    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 211
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_1

    .line 216
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v5, v5, v1

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_4

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 226
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    return-void
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 1

    .line 457
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 458
    iput-object p2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 459
    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 460
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 461
    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    .line 462
    iput p5, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    .line 463
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->isDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 763
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    return-void
.end method

.method public cancelTouchFocus()V
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7

    .line 486
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 487
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 488
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 489
    aget-object v5, v1, v4

    .line 490
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v6, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    .line 491
    invoke-virtual {v0, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 494
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 495
    invoke-virtual {v3, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 496
    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    const/high16 v6, -0x31000000

    .line 497
    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 498
    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 501
    :cond_2
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 502
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 503
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 504
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 505
    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    if-eqz v3, :cond_4

    .line 510
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 7

    .line 523
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 524
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 525
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    const/high16 v1, -0x31000000

    .line 526
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 527
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 532
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 533
    iget v3, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 534
    aget-object v5, v2, v4

    .line 535
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v6, p1, :cond_0

    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v6, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x1

    .line 536
    invoke-virtual {v1, v5, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 537
    :cond_1
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 538
    iget-object v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 539
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 540
    iget v6, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 541
    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v5, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 544
    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 546
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    .line 843
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    :cond_0
    return-void
.end method

.method public draw()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 127
    iget-object v0, v0, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 128
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 130
    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 132
    sget-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->drawDebug()V

    :cond_1
    return-void
.end method

.method public getActionsRequestRendering()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    return v0
.end method

.method public getActors()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getDebugColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    return v0
.end method

.method public getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 729
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2, v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    return-object p1
.end method

.method public isDebugAll()Z
    .locals 1

    .line 798
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    return v0
.end method

.method protected isInsideViewport(II)Z
    .locals 6

    .line 848
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v0

    .line 849
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 850
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v2

    .line 851
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 852
    sget-object v4, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, p2

    if-lt p1, v0, :cond_0

    if-ge p1, v1, :cond_0

    if-lt v4, v2, :cond_0

    if-ge v4, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method public keyDown(I)Z
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 414
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 415
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 416
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 417
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 418
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 419
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p1

    .line 420
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public keyTyped(C)Z
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 442
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 443
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 444
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 445
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setCharacter(C)V

    .line 446
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 447
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p1

    .line 448
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public keyUp(I)Z
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 428
    :cond_0
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 429
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 430
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 431
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 432
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 433
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p1

    .line 434
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public mouseMoved(II)Z
    .locals 2

    .line 368
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 369
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->isInsideViewport(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 375
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 376
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 377
    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 378
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 379
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 381
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    if-nez p2, :cond_1

    .line 382
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 384
    :cond_1
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 385
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p2

    .line 386
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result p1

    return p1
.end method

.method public removeTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 4

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 470
    iget v1, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 471
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 472
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v3, p1, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p3, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v3, p4, :cond_0

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v3, p5, :cond_0

    .line 474
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 475
    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method public scrolled(FF)Z
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 397
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 398
    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 399
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 400
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmountX(F)V

    .line 401
    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmountY(F)V

    .line 402
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 403
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 404
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 405
    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p1

    .line 406
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p1
.end method

.method public setActionsRequestRendering(Z)V
    .locals 0

    .line 770
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    return-void
.end method

.method public setDebugAll(Z)V
    .locals 2

    .line 789
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 790
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 792
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 794
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setDebugInvisible(Z)V
    .locals 0

    .line 784
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugInvisible:Z

    return-void
.end method

.method public setDebugParentUnderMouse(Z)V
    .locals 2

    .line 814
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 815
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 817
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 819
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V
    .locals 2

    if-nez p1, :cond_0

    .line 826
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, p1, :cond_1

    return-void

    .line 828
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 829
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    .line 830
    sput-boolean v1, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 832
    :cond_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setDebugTableUnderMouse(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 838
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V

    return-void
.end method

.method public setDebugUnderMouse(Z)V
    .locals 2

    .line 803
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 804
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 806
    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 808
    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    :goto_0
    return-void
.end method

.method public setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 4

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 616
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 617
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 618
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 619
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 621
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 622
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 623
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 625
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 627
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_2

    .line 629
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 630
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 631
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 632
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_2

    .line 633
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 636
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v3
.end method

.method public setRoot(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 2

    .line 716
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    .line 717
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v0, 0x0

    .line 718
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    .line 719
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    return-void
.end method

.method public setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 4

    .line 650
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 651
    :cond_0
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 652
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 653
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->scroll:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 654
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 656
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 657
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 658
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 660
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    .line 662
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz p1, :cond_2

    .line 664
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 665
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 666
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 667
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_2

    .line 668
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 671
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return v3
.end method

.method public setViewport(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-void
.end method

.method public stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 743
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    return-object p1
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    return-object p1
.end method

.method public touchDown(IIII)Z
    .locals 2

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->isInsideViewport(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p3

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 269
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 271
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 273
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 274
    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 275
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 276
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 277
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 278
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 279
    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 281
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p3, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, p2, p3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p2

    if-nez p2, :cond_1

    .line 283
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object p2

    sget-object p3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 287
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p2

    .line 288
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public touchDragged(III)Z
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 297
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 298
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 304
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 305
    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 306
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 307
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 308
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 309
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 311
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 312
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 313
    iget v2, p2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v1, v2, :cond_4

    .line 314
    aget-object v3, v0, v1

    .line 315
    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-eq v4, p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 316
    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->contains(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 317
    :cond_2
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 318
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 319
    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 323
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p2

    .line 324
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public touchUp(IIII)Z
    .locals 5

    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p3

    .line 332
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v0, p3

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v0, p3

    .line 335
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v0, :cond_0

    return v1

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 339
    const-class p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 340
    sget-object p2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 341
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 342
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 343
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 344
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 345
    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 347
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 348
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 349
    iget v2, p2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    :goto_0
    if-ge v1, v2, :cond_5

    .line 350
    aget-object v3, v0, v1

    .line 351
    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v4, p3, :cond_4

    iget v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-eq v4, p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 352
    invoke-virtual {p2, v3, v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    .line 353
    :cond_2
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 354
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 355
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 356
    :cond_3
    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_5
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 360
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result p2

    .line 361
    invoke-static {p1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    return p2
.end method

.method public unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    .line 606
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_1
    return-void
.end method

.method public unfocusAll()V
    .locals 1

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 600
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 601
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    return-void
.end method
