.class public Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;
.super Ljava/lang/Object;
.source "RegionInfluencer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AspectTextureRegion"
.end annotation


# instance fields
.field public halfInvAspectRatio:F

.field public imageName:Ljava/lang/String;

.field public u:F

.field public u2:F

.field public v:F

.field public v2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;)V

    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    .line 170
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    .line 171
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    .line 172
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    .line 173
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    .line 174
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    .line 175
    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v0, :cond_0

    .line 176
    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->imageName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;)V
    .locals 1

    .line 181
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    .line 182
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    .line 183
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    .line 184
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    .line 185
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    .line 186
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->imageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->imageName:Ljava/lang/String;

    return-void
.end method

.method public updateUV(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->imageName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getU()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u:F

    .line 194
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getV()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v:F

    .line 195
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getU2()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->u2:F

    .line 196
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getV2()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->v2:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 197
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->getRegionWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    mul-float v1, v1, v0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/influencers/RegionInfluencer$AspectTextureRegion;->halfInvAspectRatio:F

    return-void
.end method
