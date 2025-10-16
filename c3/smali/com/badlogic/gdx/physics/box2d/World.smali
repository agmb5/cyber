.class public final Lcom/badlogic/gdx/physics/box2d/World;
.super Ljava/lang/Object;
.source "World.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field protected final addr:J

.field protected final bodies:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final contact:Lcom/badlogic/gdx/physics/box2d/Contact;

.field private contactAddrs:[J

.field protected contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

.field protected contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

.field private final contacts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final fixtures:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field protected final freeBodies:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;"
        }
    .end annotation
.end field

.field private final freeContacts:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation
.end field

.field protected final freeFixtures:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;"
        }
    .end annotation
.end field

.field final gravity:Lcom/badlogic/gdx/math/Vector2;

.field private final impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

.field protected final joints:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;"
        }
    .end annotation
.end field

.field private final manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

.field private queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

.field private rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

.field private rayNormal:Lcom/badlogic/gdx/math/Vector2;

.field private rayPoint:Lcom/badlogic/gdx/math/Vector2;

.field final tmpGravity:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 188
    new-instance v0, Lcom/badlogic/gdx/utils/SharedLibraryLoader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;-><init>()V

    const-string v1, "gdx-box2d"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SharedLibraryLoader;->load(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Z)V
    .locals 6

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World$1;

    const/16 v1, 0x64

    const/16 v2, 0xc8

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World$1;-><init>(Lcom/badlogic/gdx/physics/box2d/World;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    .line 200
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/World$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World$2;-><init>(Lcom/badlogic/gdx/physics/box2d/World;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    .line 211
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    .line 214
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    .line 217
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    .line 223
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 795
    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    .line 796
    new-instance v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v1}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    .line 853
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    new-array v1, v2, [J

    .line 880
    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 881
    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    .line 882
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    .line 981
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/Contact;

    const-wide/16 v4, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 982
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Manifold;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    .line 983
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    invoke-direct {v3, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    .line 1052
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 1060
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    .line 1061
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    .line 229
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/physics/box2d/World;->newWorld(FFZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    .line 231
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length p1, p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 232
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length p1, p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 234
    :goto_0
    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 235
    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-direct {v0, p0, v4, v5}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private beginContact(J)V
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 988
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->beginContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    :cond_0
    return-void
.end method

.method private contactFilter(JJ)Z
    .locals 2

    .line 966
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    if-eqz v0, :cond_0

    .line 967
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/physics/box2d/ContactFilter;->shouldCollide(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result p1

    return p1

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object p1

    .line 970
    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p2, p3, p4}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;

    move-result-object p2

    .line 972
    iget-short p3, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    iget-short p4, p2, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p4, :cond_2

    iget-short p3, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-eqz p3, :cond_2

    .line 973
    iget-short p1, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 976
    :cond_2
    iget-short p3, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-short p4, p2, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    and-int/2addr p3, p4

    if-eqz p3, :cond_3

    iget-short p1, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-short p2, p2, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J
    .locals 23

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    .line 418
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_0

    .line 419
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;

    .line 420
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->length:F

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->frequencyHz:F

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJointDef;->dampingRatio:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateDistanceJoint(JJJZFFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 423
    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_1

    .line 424
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;

    .line 425
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxForce:F

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJointDef;->maxTorque:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateFrictionJoint(JJJZFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 428
    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_2

    .line 429
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    .line 430
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v8, v8, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-wide v10, v10, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->ratio:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateGearJoint(JJJZJJF)J

    move-result-wide v0

    return-wide v0

    .line 432
    :cond_2
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_3

    .line 433
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;

    .line 434
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->linearOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->linearOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->angularOffset:F

    iget v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->maxForce:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->maxTorque:F

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJointDef;->correctionFactor:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateMotorJoint(JJJZFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 437
    :cond_3
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_4

    .line 438
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;

    .line 439
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->target:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->maxForce:F

    iget v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->frequencyHz:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJointDef;->dampingRatio:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateMouseJoint(JJJZFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 442
    :cond_4
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_5

    .line 443
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;

    .line 444
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->referenceAngle:F

    iget-boolean v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableLimit:Z

    move-wide/from16 v21, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->lowerTranslation:F

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->upperTranslation:F

    move/from16 v17, v1

    iget-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->enableMotor:Z

    move/from16 v18, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->maxMotorForce:F

    move/from16 v19, v1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJointDef;->motorSpeed:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct/range {v0 .. v20}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J

    move-result-wide v0

    return-wide v0

    .line 448
    :cond_5
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_6

    .line 449
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;

    move-object/from16 v15, p0

    .line 450
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->groundAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v14, v14, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v15, v15, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthA:F

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->lengthB:F

    move/from16 v17, v1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJointDef;->ratio:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreatePulleyJoint(JJJZFFFFFFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 455
    :cond_6
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_7

    .line 456
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;

    move-object/from16 v15, p0

    .line 457
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->referenceAngle:F

    iget-boolean v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableLimit:Z

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->lowerAngle:F

    iget v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->upperAngle:F

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->enableMotor:Z

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->motorSpeed:F

    move/from16 v17, v1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJointDef;->maxMotorTorque:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J

    move-result-wide v0

    return-wide v0

    .line 461
    :cond_7
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_8

    .line 462
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;

    move-object/from16 v15, p0

    .line 463
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJointDef;->maxLength:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateRopeJoint(JJJZFFFFF)J

    move-result-wide v0

    return-wide v0

    :cond_8
    move-object/from16 v15, p0

    .line 466
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_9

    .line 467
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;

    .line 468
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->referenceAngle:F

    iget v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->frequencyHz:F

    iget v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJointDef;->dampingRatio:F

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateWeldJoint(JJJZFFFFFFF)J

    move-result-wide v0

    return-wide v0

    .line 471
    :cond_9
    iget-object v1, v0, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_a

    .line 472
    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;

    .line 473
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-wide v5, v5, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-boolean v7, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->collideConnected:Z

    iget-object v8, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v9, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorA:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v10, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v11, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAnchorB:Lcom/badlogic/gdx/math/Vector2;

    iget v11, v11, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v12, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v12, v12, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v13, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->localAxisA:Lcom/badlogic/gdx/math/Vector2;

    iget v13, v13, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-boolean v14, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->enableMotor:Z

    iget v15, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->maxMotorTorque:F

    move-wide/from16 v19, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->motorSpeed:F

    move/from16 v16, v1

    iget v1, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->frequencyHz:F

    move/from16 v17, v1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJointDef;->dampingRatio:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v18}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateWheelJoint(JJJZFFFFFFZFFFF)J

    move-result-wide v0

    return-wide v0

    :cond_a
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private endContact(J)V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 995
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    invoke-interface {p1, p2}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->endContact(Lcom/badlogic/gdx/physics/box2d/Contact;)V

    :cond_0
    return-void
.end method

.method public static native getVelocityThreshold()F
.end method

.method private native jniClearForces(J)V
.end method

.method private native jniCreateBody(JIFFFFFFFFZZZZZF)J
.end method

.method private native jniCreateDistanceJoint(JJJZFFFFFFF)J
.end method

.method private native jniCreateFrictionJoint(JJJZFFFFFF)J
.end method

.method private native jniCreateGearJoint(JJJZJJF)J
.end method

.method private native jniCreateMotorJoint(JJJZFFFFFF)J
.end method

.method private native jniCreateMouseJoint(JJJZFFFFF)J
.end method

.method private native jniCreatePrismaticJoint(JJJZFFFFFFFZFFZFF)J
.end method

.method private native jniCreatePulleyJoint(JJJZFFFFFFFFFFF)J
.end method

.method private native jniCreateRevoluteJoint(JJJZFFFFFZFFZFF)J
.end method

.method private native jniCreateRopeJoint(JJJZFFFFF)J
.end method

.method private native jniCreateWeldJoint(JJJZFFFFFFF)J
.end method

.method private native jniCreateWheelJoint(JJJZFFFFFFZFFFF)J
.end method

.method private native jniDeactivateBody(JJ)V
.end method

.method private native jniDestroyBody(JJ)V
.end method

.method private native jniDestroyFixture(JJJ)V
.end method

.method private native jniDestroyJoint(JJ)V
.end method

.method private native jniDispose(J)V
.end method

.method private native jniGetAutoClearForces(J)Z
.end method

.method private native jniGetBodyCount(J)I
.end method

.method private native jniGetContactCount(J)I
.end method

.method private native jniGetContactList(J[J)V
.end method

.method private native jniGetGravity(J[F)V
.end method

.method private native jniGetJointcount(J)I
.end method

.method private native jniGetProxyCount(J)I
.end method

.method private native jniIsLocked(J)Z
.end method

.method private native jniQueryAABB(JFFFF)V
.end method

.method private native jniRayCast(JFFFF)V
.end method

.method private native jniSetAutoClearForces(JZ)V
.end method

.method private native jniSetContiousPhysics(JZ)V
.end method

.method private native jniSetGravity(JFF)V
.end method

.method private native jniSetWarmStarting(JZ)V
.end method

.method private native jniStep(JFII)V
.end method

.method private native newWorld(FFZ)J
.end method

.method private postSolve(JJ)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 1010
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    iput-wide p3, p1, Lcom/badlogic/gdx/physics/box2d/ContactImpulse;->addr:J

    .line 1011
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iget-object p3, p0, Lcom/badlogic/gdx/physics/box2d/World;->impulse:Lcom/badlogic/gdx/physics/box2d/ContactImpulse;

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->postSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/ContactImpulse;)V

    :cond_0
    return-void
.end method

.method private preSolve(JJ)V
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iput-wide p1, v0, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 1002
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    iput-wide p3, p1, Lcom/badlogic/gdx/physics/box2d/Manifold;->addr:J

    .line 1003
    iget-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contact:Lcom/badlogic/gdx/physics/box2d/Contact;

    iget-object p3, p0, Lcom/badlogic/gdx/physics/box2d/World;->manifold:Lcom/badlogic/gdx/physics/box2d/Manifold;

    invoke-interface {p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/ContactListener;->preSolve(Lcom/badlogic/gdx/physics/box2d/Contact;Lcom/badlogic/gdx/physics/box2d/Manifold;)V

    :cond_0
    return-void
.end method

.method private reportFixture(J)Z
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/physics/box2d/QueryCallback;->reportFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private reportRayFixture(JFFFFF)F
    .locals 1

    .line 1064
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 1066
    iget-object p3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    iput p4, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1067
    iget-object p3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    iput p5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 1068
    iget-object p3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    iput p6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 1069
    iget-object p3, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    iget-object p4, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p4, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/physics/box2d/Fixture;

    iget-object p2, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayPoint:Lcom/badlogic/gdx/math/Vector2;

    iget-object p4, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayNormal:Lcom/badlogic/gdx/math/Vector2;

    invoke-interface {p3, p1, p2, p4, p7}, Lcom/badlogic/gdx/physics/box2d/RayCastCallback;->reportRayFixture(Lcom/badlogic/gdx/physics/box2d/Fixture;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private native setUseDefaultContactFilter(Z)V
.end method

.method public static native setVelocityThreshold(F)V
.end method


# virtual methods
.method public QueryAABB(Lcom/badlogic/gdx/physics/box2d/QueryCallback;FFFF)V
    .locals 7

    .line 849
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->queryCallback:Lcom/badlogic/gdx/physics/box2d/QueryCallback;

    .line 850
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniQueryAABB(JFFFF)V

    return-void
.end method

.method public clearForces()V
    .locals 2

    .line 711
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniClearForces(J)V

    return-void
.end method

.method public createBody(Lcom/badlogic/gdx/physics/box2d/BodyDef;)Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 21

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p0

    .line 284
    iget-wide v1, v15, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v3, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->type:Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;

    invoke-virtual {v3}, Lcom/badlogic/gdx/physics/box2d/BodyDef$BodyType;->getValue()I

    move-result v3

    iget-object v4, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v5, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v6, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angle:F

    iget-object v7, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v8, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearVelocity:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularVelocity:F

    iget v10, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->linearDamping:F

    iget v11, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->angularDamping:F

    iget-boolean v12, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->allowSleep:Z

    iget-boolean v13, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->awake:Z

    iget-boolean v15, v14, Lcom/badlogic/gdx/physics/box2d/BodyDef;->fixedRotation:Z

    move-object/from16 v18, v0

    move-object v0, v14

    move v14, v15

    iget-boolean v15, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->bullet:Z

    move-wide/from16 v19, v1

    iget-boolean v1, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->active:Z

    move/from16 v16, v1

    iget v0, v0, Lcom/badlogic/gdx/physics/box2d/BodyDef;->gravityScale:F

    move/from16 v17, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-direct/range {v0 .. v17}, Lcom/badlogic/gdx/physics/box2d/World;->jniCreateBody(JIFFFFFFFFZZZZZF)J

    move-result-wide v0

    move-object/from16 v2, p0

    .line 287
    iget-object v3, v2, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Body;

    .line 288
    invoke-virtual {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Body;->reset(J)V

    .line 289
    iget-object v0, v2, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v4, v3, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {v0, v4, v5, v3}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public createJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)Lcom/badlogic/gdx/physics/box2d/Joint;
    .locals 9

    .line 393
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->createProperJoint(Lcom/badlogic/gdx/physics/box2d/JointDef;)J

    move-result-wide v6

    .line 395
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->DistanceJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/DistanceJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 396
    :goto_0
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->FrictionJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/FrictionJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 397
    :cond_1
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->GearJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_2

    new-instance v8, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;

    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;

    iget-object v4, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint1:Lcom/badlogic/gdx/physics/box2d/Joint;

    iget-object v5, v0, Lcom/badlogic/gdx/physics/box2d/joints/GearJointDef;->joint2:Lcom/badlogic/gdx/physics/box2d/Joint;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/joints/GearJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;JLcom/badlogic/gdx/physics/box2d/Joint;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 398
    :cond_2
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MotorJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_3

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/MotorJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/MotorJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 399
    :cond_3
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->MouseJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_4

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/MouseJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 400
    :cond_4
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PrismaticJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_5

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/PrismaticJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 401
    :cond_5
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->PulleyJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_6

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/PulleyJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 402
    :cond_6
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RevoluteJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_7

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/RevoluteJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 403
    :cond_7
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->RopeJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_8

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 404
    :cond_8
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WeldJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_9

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/WeldJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 405
    :cond_9
    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;->WheelJoint:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    if-ne v1, v2, :cond_a

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;

    invoke-direct {v0, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/joints/WheelJoint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    :cond_a
    if-eqz v0, :cond_b

    .line 407
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v2, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v2, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 409
    new-instance v2, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v3, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/physics/box2d/JointEdge;-><init>(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Joint;)V

    .line 410
    iput-object v1, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 411
    iput-object v2, v0, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    .line 412
    iget-object v3, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyA:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v3, v3, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 413
    iget-object p1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->bodyB:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object p1, p1, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0

    .line 406
    :cond_b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown joint type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/badlogic/gdx/physics/box2d/JointDef;->type:Lcom/badlogic/gdx/physics/box2d/JointDef$JointType;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method deactivateBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 4

    .line 374
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniDeactivateBody(JJ)V

    return-void
.end method

.method public destroyBody(Lcom/badlogic/gdx/physics/box2d/Body;)V
    .locals 7

    .line 321
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    .line 322
    :goto_0
    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getJointList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v1, v1, Lcom/badlogic/gdx/physics/box2d/JointEdge;->joint:Lcom/badlogic/gdx/physics/box2d/Joint;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V

    goto :goto_0

    .line 324
    :cond_0
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyBody(JJ)V

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/Body;->setUserData(Ljava/lang/Object;)V

    .line 326
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1}, Lcom/badlogic/gdx/physics/box2d/Body;->getFixtureList()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    .line 328
    :goto_1
    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v3, :cond_1

    .line 329
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/physics/box2d/Fixture;

    .line 330
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v5, v3, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/physics/box2d/Fixture;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/physics/box2d/Fixture;->setUserData(Ljava/lang/Object;)V

    .line 331
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeFixtures:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    goto :goto_1

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeBodies:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method destroyFixture(Lcom/badlogic/gdx/physics/box2d/Body;Lcom/badlogic/gdx/physics/box2d/Fixture;)V
    .locals 7

    .line 354
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v3, p1, Lcom/badlogic/gdx/physics/box2d/Body;->addr:J

    iget-wide v5, p2, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyFixture(JJJ)V

    return-void
.end method

.method public destroyJoint(Lcom/badlogic/gdx/physics/box2d/Joint;)V
    .locals 4

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/physics/box2d/Joint;->setUserData(Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget-wide v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/LongMap;->remove(J)Ljava/lang/Object;

    .line 669
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 670
    iget-object v0, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeB:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/JointEdge;->other:Lcom/badlogic/gdx/physics/box2d/Body;

    iget-object v0, v0, Lcom/badlogic/gdx/physics/box2d/Body;->joints:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->jointEdgeA:Lcom/badlogic/gdx/physics/box2d/JointEdge;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 671
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-wide v2, p1, Lcom/badlogic/gdx/physics/box2d/Joint;->addr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/World;->jniDestroyJoint(JJ)V

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 953
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniDispose(J)V

    return-void
.end method

.method public getAutoClearForces()Z
    .locals 2

    .line 834
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetAutoClearForces(J)Z

    move-result v0

    return v0
.end method

.method public getBodies(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Body;",
            ">;)V"
        }
    .end annotation

    .line 915
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->bodies:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBodyCount()I
    .locals 2

    .line 751
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetBodyCount(J)I

    move-result v0

    return v0
.end method

.method public getContactCount()I
    .locals 2

    .line 776
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactCount(J)I

    move-result v0

    return v0
.end method

.method public getContactList()Lcom/badlogic/gdx/utils/Array;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Contact;",
            ">;"
        }
    .end annotation

    .line 889
    invoke-virtual {p0}, Lcom/badlogic/gdx/physics/box2d/World;->getContactCount()I

    move-result v0

    .line 890
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    .line 892
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    .line 893
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 894
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 896
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 897
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_0
    sub-int v4, v0, v1

    if-ge v3, v4, :cond_1

    .line 899
    iget-object v4, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    new-instance v5, Lcom/badlogic/gdx/physics/box2d/Contact;

    const-wide/16 v6, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/badlogic/gdx/physics/box2d/Contact;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 901
    :cond_1
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    invoke-direct {p0, v3, v4, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetContactList(J[J)V

    .line 903
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :goto_1
    if-ge v2, v0, :cond_2

    .line 905
    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->freeContacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/physics/box2d/Contact;

    .line 906
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactAddrs:[J

    aget-wide v4, v3, v2

    iput-wide v4, v1, Lcom/badlogic/gdx/physics/box2d/Contact;->addr:J

    .line 907
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->contacts:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getFixtureCount()I
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    return v0
.end method

.method public getFixtures(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Fixture;",
            ">;)V"
        }
    .end annotation

    .line 924
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 925
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 926
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->fixtures:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 927
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getGravity()Lcom/badlogic/gdx/math/Vector2;
    .locals 3

    .line 799
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetGravity(J[F)V

    .line 800
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 801
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->tmpGravity:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 802
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->gravity:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public getJointCount()I
    .locals 2

    .line 766
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetJointcount(J)I

    move-result v0

    return v0
.end method

.method public getJoints(Lcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/physics/box2d/Joint;",
            ">;)V"
        }
    .end annotation

    .line 933
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 934
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->joints:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getProxyCount()I
    .locals 2

    .line 741
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniGetProxyCount(J)I

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 2

    .line 814
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/World;->jniIsLocked(J)Z

    move-result v0

    return v0
.end method

.method public rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;FFFF)V
    .locals 7

    .line 1048
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->rayCastCallback:Lcom/badlogic/gdx/physics/box2d/RayCastCallback;

    .line 1049
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/World;->jniRayCast(JFFFF)V

    return-void
.end method

.method public rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 6

    .line 1038
    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->rayCast(Lcom/badlogic/gdx/physics/box2d/RayCastCallback;FFFF)V

    return-void
.end method

.method public setAutoClearForces(Z)V
    .locals 2

    .line 824
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetAutoClearForces(JZ)V

    return-void
.end method

.method public setContactFilter(Lcom/badlogic/gdx/physics/box2d/ContactFilter;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactFilter:Lcom/badlogic/gdx/physics/box2d/ContactFilter;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 265
    :goto_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/physics/box2d/World;->setUseDefaultContactFilter(Z)V

    return-void
.end method

.method public setContactListener(Lcom/badlogic/gdx/physics/box2d/ContactListener;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/World;->contactListener:Lcom/badlogic/gdx/physics/box2d/ContactListener;

    return-void
.end method

.method public setContinuousPhysics(Z)V
    .locals 2

    .line 731
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetContiousPhysics(JZ)V

    return-void
.end method

.method public setDestructionListener(Lcom/badlogic/gdx/physics/box2d/DestructionListener;)V
    .locals 0

    return-void
.end method

.method public setGravity(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3

    .line 786
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetGravity(JFF)V

    return-void
.end method

.method public setWarmStarting(Z)V
    .locals 2

    .line 721
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/World;->jniSetWarmStarting(JZ)V

    return-void
.end method

.method public step(FII)V
    .locals 6

    .line 691
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/World;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/World;->jniStep(JFII)V

    return-void
.end method
