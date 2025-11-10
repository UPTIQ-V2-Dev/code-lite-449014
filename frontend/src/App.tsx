import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { DashboardPage } from '@/pages';

export const App = () => {
    return (
        <Router>
            <Routes>
                <Route path="/" element={<DashboardPage />} />
            </Routes>
        </Router>
    );
};
