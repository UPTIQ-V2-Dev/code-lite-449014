# Frontend Implementation Plan - Minimal React 19 App

## Tech Stack
- React 19 with latest features (use optimizers, concurrent features)
- Vite (already configured)
- Shadcn/ui components (pre-installed)
- Tailwind v4 (already configured)
- TypeScript
- React Router DOM for navigation

## Application Structure - Single Page with Minimal Code

### Phase 1: Core Application Setup
**Target: Single functional page with routing**

#### 1. Main App Component (`src/App.tsx`)
- Remove starter content
- Add React Router setup
- Single route to Dashboard
- Use existing layout components

#### 2. Dashboard Page (`src/pages/Dashboard.tsx`)
- Single page containing all core functionality
- Use Shadcn Card component for sections
- Minimal state management with React 19 hooks
- Display sample data from existing mockData.ts

#### 3. Essential Components (Reuse Existing)
- Use existing Button, Card, Input components from shadcn
- No custom components needed initially

### Phase 2: Basic Functionality
**Target: Interactive features with minimal API**

#### 4. Data Management
- Extend existing `src/data/mockData.ts`
- Single data source for all content
- Use React Query for any future API calls (already installed)

#### 5. Simple State Management
- Use React 19's built-in state with single useState
- No external state management needed
- Leverage existing hooks/use-mobile.ts

#### 6. Styling
- Use existing Tailwind v4 configuration
- Minimal custom CSS in existing base.css
- Leverage shadcn default themes

### Phase 3: Polish & Optimization
**Target: Production ready with minimal code**

#### 7. Error Handling
- Simple error boundaries using React 19 features
- Toast notifications using existing Sonner component

#### 8. Performance
- Use React 19's automatic optimizations
- Minimal bundle with existing Vite configuration

#### 9. Testing
- Extend existing test setup (already configured)
- Single test file for main functionality

## Implementation Strategy

### Single Dashboard Page Structure:
```
Dashboard
├── Header (Welcome message)
├── Stats Cards (3-4 simple metrics)
├── Main Content (table or list)
└── Actions (1-2 buttons)
```

### File Changes Required:
1. `src/App.tsx` - Router setup (5 lines)
2. `src/pages/Dashboard.tsx` - Main page (50-60 lines)
3. `src/data/mockData.ts` - Extend with sample data (10-15 lines)
4. `src/types/api.ts` - Simple type definitions (10-15 lines)

### API Endpoints (if needed):
- GET `/api/data` - Single endpoint using existing api.ts structure

### Reused Existing Components:
- Button, Card, Table, Badge from shadcn
- Layout utilities from existing utils.ts
- Mobile hook from use-mobile.ts

## Total Implementation:
- **1 main page** with all functionality
- **~100 lines of new code**
- **Maximum reuse** of existing setup
- **Zero additional dependencies**

This plan focuses on creating a fully functional React 19 application with the absolute minimum amount of code while leveraging all existing infrastructure and components.