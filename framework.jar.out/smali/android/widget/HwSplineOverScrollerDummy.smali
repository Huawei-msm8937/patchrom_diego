.class public Landroid/widget/HwSplineOverScrollerDummy;
.super Ljava/lang/Object;
.source "HwSplineOverScrollerDummy.java"

# interfaces
.implements Landroid/widget/IHwSplineOverScroller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public adjustBallisticVelocity(IFI)I
    .locals 0
    .param p1, "originalVelocity"    # I
    .param p2, "acceleration"    # F
    .param p3, "maxOver"    # I

    .prologue
    .line 55
    return p1
.end method

.method public adjustDistance(D)D
    .locals 1
    .param p1, "oirginalDistance"    # D

    .prologue
    .line 35
    return-wide p1
.end method

.method public getBallisticDistance(DIIJJ)D
    .locals 1
    .param p1, "originalDistance"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "duration"    # J
    .param p7, "currentTime"    # J

    .prologue
    .line 39
    return-wide p1
.end method

.method public getBallisticDuration(I)I
    .locals 0
    .param p1, "originalDuration"    # I

    .prologue
    .line 47
    return p1
.end method

.method public getCubicDistance(DIIJJ)D
    .locals 1
    .param p1, "originalDistance"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "duration"    # J
    .param p7, "currentTime"    # J

    .prologue
    .line 43
    return-wide p1
.end method

.method public getCubicDuration(I)I
    .locals 0
    .param p1, "originalDuration"    # I

    .prologue
    .line 51
    return p1
.end method

.method public getSplineFlingDistance(DIDFF)D
    .locals 1
    .param p1, "orignDistance"    # D
    .param p3, "velocity"    # I
    .param p4, "decelerationRate"    # D
    .param p6, "flingFriction"    # F
    .param p7, "physicalCoeff"    # F

    .prologue
    .line 60
    return-wide p1
.end method

.method public getSplineFlingDuration(IIDFF)I
    .locals 0
    .param p1, "orignDurtion"    # I
    .param p2, "velocity"    # I
    .param p3, "decelerationRate"    # D
    .param p5, "flingFriction"    # F
    .param p6, "physicalCoeff"    # F

    .prologue
    .line 63
    return p1
.end method

.method public resetLastDistanceValue(DD)V
    .locals 0
    .param p1, "lastDistance"    # D
    .param p3, "lastDistanceActual"    # D

    .prologue
    .line 29
    return-void
.end method

.method public setStableItemHeight(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 32
    return-void
.end method
